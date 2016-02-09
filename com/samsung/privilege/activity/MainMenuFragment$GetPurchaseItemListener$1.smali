.class Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;
.super Ljava/lang/Object;
.source "MainMenuFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

    iput p2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->val$response_code:I

    iput-object p3, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->val$response_text:Ljava/lang/String;

    .line 1388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 25

    .prologue
    .line 1390
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->val$response_code:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_18f

    .line 1392
    :try_start_8
    new-instance v22, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1393
    .local v22, "jsonRoot":Lorg/json/JSONObject;
    new-instance v23, Lcom/samsung/privilege/bean/Purchasing;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/privilege/bean/Purchasing;-><init>(Lorg/json/JSONObject;)V

    .line 1395
    .local v23, "purchasing":Lcom/samsung/privilege/bean/Purchasing;
    new-instance v21, Lcom/samsung/privilege/bean/MainMenuItemModel;

    invoke-direct/range {v21 .. v21}, Lcom/samsung/privilege/bean/MainMenuItemModel;-><init>()V

    .line 1396
    .local v21, "item":Lcom/samsung/privilege/bean/MainMenuItemModel;
    const/4 v2, 0x3

    move-object/from16 v0, v21

    iput v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    .line 1397
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    .line 1398
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/samsung/privilege/bean/Purchasing;->RedeemKey:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_id:Ljava/lang/String;

    .line 1399
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/samsung/privilege/bean/Purchasing;->ID:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_campaign_id:Ljava/lang/String;

    .line 1400
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/samsung/privilege/bean/Purchasing;->CategoryID:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_cat_id:Ljava/lang/String;

    .line 1401
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/samsung/privilege/bean/Purchasing;->Type:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_type:Ljava/lang/String;

    .line 1402
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/samsung/privilege/bean/Purchasing;->Name:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_detail:Ljava/lang/String;

    .line 1403
    move-object/from16 v0, v23

    iget v2, v0, Lcom/samsung/privilege/bean/Purchasing;->LocationAgencyId:I

    move-object/from16 v0, v21

    iput v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_location_agency_id:I

    .line 1404
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/samsung/privilege/bean/Purchasing;->AgencyID:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_agencyid:Ljava/lang/String;

    .line 1405
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/samsung/privilege/bean/Purchasing;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_agencyname:Ljava/lang/String;

    .line 1406
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/samsung/privilege/bean/Purchasing;->Serial:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_serial:Ljava/lang/String;

    .line 1407
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/samsung/privilege/bean/Purchasing;->Barcode:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_barcode:Ljava/lang/String;

    .line 1408
    move-object/from16 v0, v23

    iget-wide v2, v0, Lcom/samsung/privilege/bean/Purchasing;->RedeemDate:J

    move-object/from16 v0, v21

    iput-wide v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_redeem_date:J

    .line 1409
    move-object/from16 v0, v23

    iget v2, v0, Lcom/samsung/privilege/bean/Purchasing;->MinutesValidAfterUsed:I

    move-object/from16 v0, v21

    iput v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_minutes_valid_after_used:I

    .line 1410
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/samsung/privilege/bean/Purchasing;->PrivilegeMessage:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_privilege_message:Ljava/lang/String;

    .line 1418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    move-object/from16 v0, v23

    iget-wide v4, v0, Lcom/samsung/privilege/bean/Purchasing;->RedeemDate:J

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_campaign_id:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_agencyname:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_detail:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->gLongExpireIn:J
    invoke-static {v9}, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;)J

    move-result-wide v9

    move-object/from16 v0, v21

    iget-object v11, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_serial:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v12, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_barcode:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_privilege_message:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v14}, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v14

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v14}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$10(Lcom/samsung/privilege/activity/MainMenuFragment;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v14

    move-object/from16 v0, v21

    iget-object v15, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_type:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

    move-object/from16 v16, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v16 .. v16}, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v16

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->gHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$11(Lcom/samsung/privilege/activity/MainMenuFragment;)Landroid/os/Handler;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v2 .. v17}, Lcom/samsung/privilege/util/DialogUtil;->showDialogSerial3TypeCode(Landroid/app/Activity;Lcom/samsung/privilege/bean/Purchasing;JILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bitmapfun/util/ImageFetcher;Ljava/lang/String;Landroid/os/Handler;Lcom/samsung/privilege/bean/NFCTag;)V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_ef} :catch_f0

    .line 1444
    .end local v21    # "item":Lcom/samsung/privilege/bean/MainMenuItemModel;
    .end local v22    # "jsonRoot":Lorg/json/JSONObject;
    .end local v23    # "purchasing":Lcom/samsung/privilege/bean/Purchasing;
    :cond_ef
    :goto_ef
    return-void

    .line 1419
    :catch_f0
    move-exception v20

    .line 1420
    .local v20, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_ef

    .line 1422
    const/16 v18, 0x0

    .line 1424
    .local v18, "blnIsAdmin":Z
    :try_start_101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_110} :catch_14b

    move-result v2

    if-eqz v2, :cond_115

    .line 1425
    const/16 v18, 0x1

    .line 1431
    :cond_115
    :goto_115
    if-eqz v18, :cond_16f

    .line 1432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v4}, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0a018c

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$6(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)V

    goto :goto_ef

    .line 1427
    :catch_14b
    move-exception v19

    .line 1428
    .local v19, "e2":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v2

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$5(Lcom/samsung/privilege/activity/MainMenuFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_115

    .line 1434
    .end local v19    # "e2":Ljava/lang/Exception;
    :cond_16f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0a018c

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$6(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)V

    goto/16 :goto_ef

    .line 1440
    .end local v18    # "blnIsAdmin":Z
    .end local v20    # "ex":Ljava/lang/Exception;
    :cond_18f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_ef

    .line 1441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0a018b

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$6(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)V

    goto/16 :goto_ef
.end method
