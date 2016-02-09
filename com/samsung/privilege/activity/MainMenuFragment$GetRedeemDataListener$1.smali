.class Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;
.super Ljava/lang/Object;
.source "MainMenuFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    iput p2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->val$response_code:I

    iput-object p3, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->val$response_text:Ljava/lang/String;

    .line 1209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 28

    .prologue
    .line 1211
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->val$response_code:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_261

    .line 1213
    :try_start_8
    new-instance v24, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1214
    .local v24, "jsonRoot":Lorg/json/JSONObject;
    const-string v2, "ID"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    .line 1215
    .local v6, "campaignID":I
    const-string v2, "AgencyName"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1216
    .local v7, "agencyName":Ljava/lang/String;
    const-string v2, "Name"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1217
    .local v8, "campaignName":Ljava/lang/String;
    const-string v2, "ExpireIn"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v9

    .line 1218
    .local v9, "expireIn":J
    const-string v2, "Serial"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1219
    .local v11, "serial":Ljava/lang/String;
    const-string v2, "CurrentDate"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    .line 1220
    .local v4, "currentDate":J
    const-string v2, "PrivilegeMessage"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1221
    .local v13, "privilegeMessage":Ljava/lang/String;
    const-string v2, "Type"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1222
    .local v15, "campaignType":Ljava/lang/String;
    const-string v2, "VoucherExpireDate"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v18

    .line 1224
    .local v18, "VoucherExpireDate":J
    const-string v2, "7"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 1225
    const-string v2, "Website"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1226
    .local v26, "urlWebsite":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->gMenuItem:Lcom/samsung/privilege/bean/MainMenuItemModel;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/bean/MainMenuItemModel;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_id:Ljava/lang/String;

    move-object/from16 v0, v26

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->goBookingHistory(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v0, v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$9(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    .end local v4    # "currentDate":J
    .end local v6    # "campaignID":I
    .end local v7    # "agencyName":Ljava/lang/String;
    .end local v8    # "campaignName":Ljava/lang/String;
    .end local v9    # "expireIn":J
    .end local v11    # "serial":Ljava/lang/String;
    .end local v13    # "privilegeMessage":Ljava/lang/String;
    .end local v15    # "campaignType":Ljava/lang/String;
    .end local v18    # "VoucherExpireDate":J
    .end local v24    # "jsonRoot":Lorg/json/JSONObject;
    .end local v26    # "urlWebsite":Ljava/lang/String;
    :cond_82
    :goto_82
    return-void

    .line 1228
    .restart local v4    # "currentDate":J
    .restart local v6    # "campaignID":I
    .restart local v7    # "agencyName":Ljava/lang/String;
    .restart local v8    # "campaignName":Ljava/lang/String;
    .restart local v9    # "expireIn":J
    .restart local v11    # "serial":Ljava/lang/String;
    .restart local v13    # "privilegeMessage":Ljava/lang/String;
    .restart local v15    # "campaignType":Ljava/lang/String;
    .restart local v18    # "VoucherExpireDate":J
    .restart local v24    # "jsonRoot":Lorg/json/JSONObject;
    :cond_83
    const-string v2, "0"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_180

    .line 1229
    if-eqz v13, :cond_95

    const-string v2, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_180

    .line 1232
    :cond_95
    const-string v25, ""

    .line 1233
    .local v25, "newPrivilegeMessage":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "<p align=\'center\' style=\'color:#0774b5\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v3

    const v12, 0x7f0a0172

    invoke-virtual {v3, v12}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v3

    const v12, 0x7f0a0173

    invoke-virtual {v3, v12}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v3

    const v12, 0x7f0a0174

    invoke-virtual {v3, v12}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v3

    const v12, 0x7f0a0175

    invoke-virtual {v3, v12}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1240
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd MMM yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    const-wide/16 v16, 0x3e8

    mul-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    .line 1241
    .local v21, "dateVoucherExpire":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "</p>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1244
    move-object/from16 v13, v25

    .line 1248
    .end local v21    # "dateVoucherExpire":Ljava/lang/String;
    .end local v25    # "newPrivilegeMessage":Ljava/lang/String;
    :cond_180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->gMenuItem:Lcom/samsung/privilege/bean/MainMenuItemModel;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/bean/MainMenuItemModel;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->gMenuItem:Lcom/samsung/privilege/bean/MainMenuItemModel;
    invoke-static {v12}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/bean/MainMenuItemModel;

    move-result-object v12

    iget-object v12, v12, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_barcode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v14}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v14

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v14}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$10(Lcom/samsung/privilege/activity/MainMenuFragment;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    move-object/from16 v16, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v16 .. v16}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v16

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->gHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$11(Lcom/samsung/privilege/activity/MainMenuFragment;)Landroid/os/Handler;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v2 .. v17}, Lcom/samsung/privilege/util/DialogUtil;->showDialogSerial3TypeCode(Landroid/app/Activity;Lcom/samsung/privilege/bean/Purchasing;JILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bitmapfun/util/ImageFetcher;Ljava/lang/String;Landroid/os/Handler;Lcom/samsung/privilege/bean/NFCTag;)V
    :try_end_1bf
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1bf} :catch_1c1

    goto/16 :goto_82

    .line 1250
    .end local v4    # "currentDate":J
    .end local v6    # "campaignID":I
    .end local v7    # "agencyName":Ljava/lang/String;
    .end local v8    # "campaignName":Ljava/lang/String;
    .end local v9    # "expireIn":J
    .end local v11    # "serial":Ljava/lang/String;
    .end local v13    # "privilegeMessage":Ljava/lang/String;
    .end local v15    # "campaignType":Ljava/lang/String;
    .end local v18    # "VoucherExpireDate":J
    .end local v24    # "jsonRoot":Lorg/json/JSONObject;
    :catch_1c1
    move-exception v23

    .line 1251
    .local v23, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_82

    .line 1252
    const/16 v20, 0x0

    .line 1254
    .local v20, "blnIsAdmin":Z
    :try_start_1d2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z
    :try_end_1e1
    .catch Ljava/lang/Exception; {:try_start_1d2 .. :try_end_1e1} :catch_21d

    move-result v2

    if-eqz v2, :cond_1e6

    .line 1255
    const/16 v20, 0x1

    .line 1260
    :cond_1e6
    :goto_1e6
    if-eqz v20, :cond_241

    .line 1261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v12}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    const v14, 0x7f0a0306

    invoke-virtual {v12, v14}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$6(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)V

    goto/16 :goto_82

    .line 1257
    :catch_21d
    move-exception v22

    .line 1258
    .local v22, "e2":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v2

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$5(Lcom/samsung/privilege/activity/MainMenuFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v12, "Exception := "

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e6

    .line 1263
    .end local v22    # "e2":Ljava/lang/Exception;
    :cond_241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v12, 0x7f0a0306

    invoke-virtual {v3, v12}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$6(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)V

    goto/16 :goto_82

    .line 1268
    .end local v20    # "blnIsAdmin":Z
    .end local v23    # "ex":Ljava/lang/Exception;
    :cond_261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_82

    .line 1269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v12, 0x7f0a0305

    invoke-virtual {v3, v12}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$6(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)V

    goto/16 :goto_82
.end method
