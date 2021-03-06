slot0 = class("SnapshotShareLayer", import("..base.BaseUI"))

function slot0.getUIName(slot0)
	return "snapshotshareui"
end

function slot0.init(slot0)
	slot0.photoImgTrans = slot0:findTF("PhotoImg")
	slot0.rawImage = slot0.photoImgTrans:GetComponent("RawImage")
	slot0.shareBtnTrans = slot0:findTF("BtnPanel/ShareBtn")
	slot0.confirmBtnTrans = slot0:findTF("BtnPanel/ConfirmBtn")
	slot0.cancelBtnTrans = slot0:findTF("BtnPanel/CancelBtn")
	slot0.userAgreenTF = slot0:findTF("UserAgreement")
	slot0.userAgreenMainTF = slot0:findTF("main", slot0.userAgreenTF)
	slot0.closeUserAgreenTF = slot0:findTF("top/btnBack", slot0.userAgreenMainTF)
	slot0.userRefuseConfirmTF = slot0:findTF("refuse_btn", slot0.userAgreenMainTF)
	slot0.userAgreenConfirmTF = slot0:findTF("accept_btn", slot0.userAgreenMainTF)

	setActive(slot0.userAgreenTF, false)

	slot0.rawImage.texture = slot0.contextData.photoTex
	slot0.bytes = slot0.contextData.photoData
end

function slot0.didEnter(slot0)
	onButton(slot0, slot0.shareBtnTrans, function ()
		if not PlayerPrefs.GetInt("snapshotAgress") or slot0 <= 0 then
			slot0:showUserAgreement(function ()
				PlayerPrefs.SetInt("snapshotAgress", 1)
				pg.ShareMgr.GetInstance():Share(pg.ShareMgr.TypePhoto)
			end)
		else
			pg.ShareMgr.GetInstance():Share(pg.ShareMgr.TypePhoto)
		end
	end, SFX_PANEL)
	onButton(slot0, slot0.confirmBtnTrans, function ()
		slot0 = os.server_date("*t", pg.TimeMgr.GetInstance():GetServerTime())

		NativeGallery.SaveImageToGallery(slot0.bytes, "Camera", slot1)
		pg.TipsMgr:GetInstance():ShowTips(i18n("word_save_ok"))
		slot0:closeView()
	end)
	onButton(slot0, slot0.cancelBtnTrans, function ()
		slot0:closeView()
	end)
end

function slot0.willExit(slot0)
	return
end

function slot0.showUserAgreement(slot0, slot1)
	setButtonEnabled(slot0.userAgreenConfirmTF, false)

	slot2 = nil
	slot0.userAgreenTitleTF = slot0:findTF("UserAgreement/main/title")
	slot0.userAgreenTitleTF:GetComponent("Text").text = i18n("word_snapshot_share_title")

	setActive(slot0.userAgreenTF, true)
	setText(slot0.userAgreenTF:Find("main/container/scrollrect/content/Text"), i18n("word_snapshot_share_agreement"))
	onButton(slot0, slot0.userRefuseConfirmTF, function ()
		setActive(slot0.userAgreenTF, false)
	end)
	onButton(slot0, slot0.userAgreenConfirmTF, function ()
		setActive(slot0.userAgreenTF, false)

		if slot0.userAgreenTF then
			slot1()
		end
	end)
	onScroll(slot0, slot0.userAgreenTF:Find("main/container/scrollrect"), function (slot0)
		if slot0.y <= 0.01 and not slot0 then
			slot0 = true

			setButtonEnabled(slot1.userAgreenConfirmTF, true)
		end
	end)
end

return slot0
