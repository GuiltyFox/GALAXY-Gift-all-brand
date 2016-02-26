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

    .line 1217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 29

    .prologue
    .line 1219
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->val$response_code:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_269

    .line 1221
    :try_start_8
    new-instance v23, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1222
    .local v23, "jsonRoot":Lorg/json/JSONObject;
    const-string v2, "ID"

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    .line 1223
    .local v6, "campaignID":I
    const-string v2, "Serial"

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1224
    .local v10, "serial":Ljava/lang/String;
    const-string v2, "PrivilegeMessage"

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1225
    .local v12, "privilegeMessage":Ljava/lang/String;
    const-string v2, "CurrentDate"

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    .line 1226
    .local v4, "currentDate":J
    const-string v2, "ExpireIn"

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getLongNullable(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 1233
    .local v9, "expireIn":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->gMenuItem:Lcom/samsung/privilege/bean/MainMenuItemModel;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/bean/MainMenuItemModel;

    move-result-object v2

    iget-object v14, v2, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_type:Ljava/lang/String;

    .line 1234
    .local v14, "campaignType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->gMenuItem:Lcom/samsung/privilege/bean/MainMenuItemModel;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/bean/MainMenuItemModel;

    move-result-object v2

    iget-object v8, v2, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_detail:Ljava/lang/String;

    .line 1235
    .local v8, "campaignName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->gMenuItem:Lcom/samsung/privilege/bean/MainMenuItemModel;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/bean/MainMenuItemModel;

    move-result-object v2

    iget-object v7, v2, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_agencyname:Ljava/lang/String;

    .line 1236
    .local v7, "agencyName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->gMenuItem:Lcom/samsung/privilege/bean/MainMenuItemModel;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/bean/MainMenuItemModel;

    move-result-object v2

    iget-wide v0, v2, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_VoucherExpireDate:J

    move-wide/from16 v18, v0

    .line 1238
    .local v18, "VoucherExpireDate":J
    const-string v2, "7"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 1239
    const-string v2, "Website"

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1240
    .local v25, "urlWebsite":Ljava/lang/String;
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

    move-object/from16 v0, v25

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->goBookingHistory(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v0, v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$9(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    .end local v4    # "currentDate":J
    .end local v6    # "campaignID":I
    .end local v7    # "agencyName":Ljava/lang/String;
    .end local v8    # "campaignName":Ljava/lang/String;
    .end local v9    # "expireIn":Ljava/lang/Long;
    .end local v10    # "serial":Ljava/lang/String;
    .end local v12    # "privilegeMessage":Ljava/lang/String;
    .end local v14    # "campaignType":Ljava/lang/String;
    .end local v18    # "VoucherExpireDate":J
    .end local v23    # "jsonRoot":Lorg/json/JSONObject;
    .end local v25    # "urlWebsite":Ljava/lang/String;
    :cond_8c
    :goto_8c
    return-void

    .line 1242
    .restart local v4    # "currentDate":J
    .restart local v6    # "campaignID":I
    .restart local v7    # "agencyName":Ljava/lang/String;
    .restart local v8    # "campaignName":Ljava/lang/String;
    .restart local v9    # "expireIn":Ljava/lang/Long;
    .restart local v10    # "serial":Ljava/lang/String;
    .restart local v12    # "privilegeMessage":Ljava/lang/String;
    .restart local v14    # "campaignType":Ljava/lang/String;
    .restart local v18    # "VoucherExpireDate":J
    .restart local v23    # "jsonRoot":Lorg/json/JSONObject;
    :cond_8d
    const-string v2, "0"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18a

    .line 1243
    if-eqz v12, :cond_9f

    const-string v2, ""

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18a

    .line 1246
    :cond_9f
    const-string v24, ""

    .line 1247
    .local v24, "newPrivilegeMessage":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "<p align=\'center\' style=\'color:#0774b5\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v3

    const v11, 0x7f090172

    invoke-virtual {v3, v11}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v3

    const v11, 0x7f090173

    invoke-virtual {v3, v11}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v3

    const v11, 0x7f090174

    invoke-virtual {v3, v11}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v3

    const v11, 0x7f090175

    invoke-virtual {v3, v11}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1254
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd MMM yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    const-wide/16 v26, 0x3e8

    mul-long v26, v26, v18

    move-wide/from16 v0, v26

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    .line 1255
    .local v20, "dateVoucherExpire":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "</p>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1258
    move-object/from16 v12, v24

    .line 1262
    .end local v20    # "dateVoucherExpire":Ljava/lang/String;
    .end local v24    # "newPrivilegeMessage":Ljava/lang/String;
    :cond_18a
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

    iget-object v11, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->gMenuItem:Lcom/samsung/privilege/bean/MainMenuItemModel;
    invoke-static {v11}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/bean/MainMenuItemModel;

    move-result-object v11

    iget-object v11, v11, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_barcode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v13}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v13

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v13}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$10(Lcom/samsung/privilege/activity/MainMenuFragment;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v15}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v15

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->gHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$11(Lcom/samsung/privilege/activity/MainMenuFragment;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v2 .. v16}, Lcom/samsung/privilege/util/DialogSerialVersion2;->showDialogSerial(Landroid/app/Activity;Lcom/samsung/privilege/bean/Purchasing;JILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bitmapfun/util/ImageFetcher;Ljava/lang/String;Landroid/os/Handler;Lcom/samsung/privilege/bean/NFCTag;)V
    :try_end_1c7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1c7} :catch_1c9

    goto/16 :goto_8c

    .line 1264
    .end local v4    # "currentDate":J
    .end local v6    # "campaignID":I
    .end local v7    # "agencyName":Ljava/lang/String;
    .end local v8    # "campaignName":Ljava/lang/String;
    .end local v9    # "expireIn":Ljava/lang/Long;
    .end local v10    # "serial":Ljava/lang/String;
    .end local v12    # "privilegeMessage":Ljava/lang/String;
    .end local v14    # "campaignType":Ljava/lang/String;
    .end local v18    # "VoucherExpireDate":J
    .end local v23    # "jsonRoot":Lorg/json/JSONObject;
    :catch_1c9
    move-exception v22

    .line 1265
    .local v22, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_8c

    .line 1266
    const/16 v17, 0x0

    .line 1268
    .local v17, "blnIsAdmin":Z
    :try_start_1da
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z
    :try_end_1e9
    .catch Ljava/lang/Exception; {:try_start_1da .. :try_end_1e9} :catch_225

    move-result v2

    if-eqz v2, :cond_1ee

    .line 1269
    const/16 v17, 0x1

    .line 1274
    :cond_1ee
    :goto_1ee
    if-eqz v17, :cond_249

    .line 1275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v11}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    const v13, 0x7f09030d

    invoke-virtual {v11, v13}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$6(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)V

    goto/16 :goto_8c

    .line 1271
    :catch_225
    move-exception v21

    .line 1272
    .local v21, "e2":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v2

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$5(Lcom/samsung/privilege/activity/MainMenuFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "Exception := "

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1ee

    .line 1277
    .end local v21    # "e2":Ljava/lang/Exception;
    :cond_249
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

    const v11, 0x7f09030d

    invoke-virtual {v3, v11}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$6(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)V

    goto/16 :goto_8c

    .line 1282
    .end local v17    # "blnIsAdmin":Z
    .end local v22    # "ex":Ljava/lang/Exception;
    :cond_269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_8c

    .line 1283
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

    const v11, 0x7f09030c

    invoke-virtual {v3, v11}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$6(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)V

    goto/16 :goto_8c
.end method
