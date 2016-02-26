.class Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;
.super Ljava/lang/Object;
.source "PurchasingListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    iput p2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->val$response_code:I

    iput-object p3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->val$response_text:Ljava/lang/String;

    .line 1467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 24

    .prologue
    .line 1470
    move-object/from16 v0, p0

    iget v2, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->val$response_code:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1a7

    .line 1472
    const-string v17, ""

    .line 1475
    .local v17, "error_message":Ljava/lang/String;
    :try_start_a
    new-instance v19, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1477
    .local v19, "jsonRoot":Lorg/json/JSONObject;
    const-string v2, "PrivilegeMessage"

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1478
    .local v9, "privilegeMessage":Ljava/lang/String;
    const-string v2, "Serial"

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1479
    .local v8, "serial":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v2

    const-string v3, "ExpireIn"

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lic/buzzebeeslib/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lic/buzzebeeslib/bean/Purchasing;->ExpireIn:J

    .line 1480
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lic/buzzebeeslib/bean/Purchasing;->IsUsed:Z

    .line 1482
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_44
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$1(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gArrayListPurchasing:Ljava/util/ArrayList;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$25(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v18

    if-lt v0, v2, :cond_b2

    .line 1492
    :goto_58
    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    .line 1494
    .local v15, "dateNow":Ljava/util/Date;
    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v10, v2, v4

    .line 1495
    .local v10, "server_time":J
    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v12, v2, v4

    .line 1497
    .local v12, "local_time":J
    sget v2, Lic/buzzebeeslib/util/ThemesUtil;->gTheme:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_120

    .line 1498
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$1(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v3}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v3

    iget-object v3, v3, Lic/buzzebeeslib/bean/Purchasing;->ID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v4}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v4

    iget-object v4, v4, Lic/buzzebeeslib/bean/Purchasing;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v5

    iget-object v5, v5, Lic/buzzebeeslib/bean/Purchasing;->Name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v6}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v6

    iget-wide v6, v6, Lic/buzzebeeslib/bean/Purchasing;->ExpireIn:J

    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v14}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$1(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v14

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v14}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$27(Lic/buzzebeeslib/activity/PurchasingListActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v14

    invoke-static/range {v2 .. v14}, Lic/buzzebeeslib/util/DialogUtil;->showDialogSerial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJLcom/bitmapfun/util/ImageFetcher;)V

    .line 1529
    .end local v8    # "serial":Ljava/lang/String;
    .end local v9    # "privilegeMessage":Ljava/lang/String;
    .end local v10    # "server_time":J
    .end local v12    # "local_time":J
    .end local v15    # "dateNow":Ljava/util/Date;
    .end local v17    # "error_message":Ljava/lang/String;
    .end local v18    # "i":I
    .end local v19    # "jsonRoot":Lorg/json/JSONObject;
    :goto_b1
    return-void

    .line 1483
    .restart local v8    # "serial":Ljava/lang/String;
    .restart local v9    # "privilegeMessage":Ljava/lang/String;
    .restart local v17    # "error_message":Ljava/lang/String;
    .restart local v18    # "i":I
    .restart local v19    # "jsonRoot":Lorg/json/JSONObject;
    :cond_b2
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$1(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gArrayListPurchasing:Ljava/util/ArrayList;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$25(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lic/buzzebeeslib/bean/Purchasing;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Purchasing;->ID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v3}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v3

    iget-object v3, v3, Lic/buzzebeeslib/bean/Purchasing;->ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11c

    .line 1484
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$1(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gArrayListPurchasing:Ljava/util/ArrayList;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$25(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lic/buzzebeeslib/bean/Purchasing;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lic/buzzebeeslib/bean/Purchasing;->IsUsed:Z

    .line 1485
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$1(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gAdapter:Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$26(Lic/buzzebeeslib/activity/PurchasingListActivity;)Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;->notifyDataSetChanged()V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_fe} :catch_100

    goto/16 :goto_58

    .line 1504
    .end local v8    # "serial":Ljava/lang/String;
    .end local v9    # "privilegeMessage":Ljava/lang/String;
    .end local v18    # "i":I
    .end local v19    # "jsonRoot":Lorg/json/JSONObject;
    :catch_100
    move-exception v16

    .line 1505
    .local v16, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    .line 1506
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$1(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v4}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v4

    move-object/from16 v0, v17

    # invokes: Lic/buzzebeeslib/activity/PurchasingListActivity;->showDialogError(Ljava/lang/String;ZLic/buzzebeeslib/bean/Purchasing;)V
    invoke-static {v2, v0, v3, v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$28(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/lang/String;ZLic/buzzebeeslib/bean/Purchasing;)V

    goto :goto_b1

    .line 1482
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v8    # "serial":Ljava/lang/String;
    .restart local v9    # "privilegeMessage":Ljava/lang/String;
    .restart local v18    # "i":I
    .restart local v19    # "jsonRoot":Lorg/json/JSONObject;
    :cond_11c
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_44

    .line 1499
    .restart local v10    # "server_time":J
    .restart local v12    # "local_time":J
    .restart local v15    # "dateNow":Ljava/util/Date;
    :cond_120
    :try_start_120
    sget v2, Lic/buzzebeeslib/util/ThemesUtil;->gTheme:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_166

    .line 1500
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$1(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v3}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v3

    iget-object v3, v3, Lic/buzzebeeslib/bean/Purchasing;->ID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v4}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v4

    iget-object v4, v4, Lic/buzzebeeslib/bean/Purchasing;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v5

    iget-object v5, v5, Lic/buzzebeeslib/bean/Purchasing;->Name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v6}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v6

    iget-wide v6, v6, Lic/buzzebeeslib/bean/Purchasing;->ExpireIn:J

    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v14}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$1(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v14

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v14}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$27(Lic/buzzebeeslib/activity/PurchasingListActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v14

    invoke-static/range {v2 .. v14}, Lic/buzzebeeslib/util/DialogUtil;->showDialogSerialGift(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJLcom/bitmapfun/util/ImageFetcher;)V

    goto/16 :goto_b1

    .line 1502
    :cond_166
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$1(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v3}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v3

    iget-object v3, v3, Lic/buzzebeeslib/bean/Purchasing;->ID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v4}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v4

    iget-object v4, v4, Lic/buzzebeeslib/bean/Purchasing;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v5

    iget-object v5, v5, Lic/buzzebeeslib/bean/Purchasing;->Name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v6}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v6

    iget-wide v6, v6, Lic/buzzebeeslib/bean/Purchasing;->ExpireIn:J

    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v14}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$1(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v14

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v14}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$27(Lic/buzzebeeslib/activity/PurchasingListActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v14

    invoke-static/range {v2 .. v14}, Lic/buzzebeeslib/util/DialogUtil;->showDialogSerial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJLcom/bitmapfun/util/ImageFetcher;)V
    :try_end_1a5
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_1a5} :catch_100

    goto/16 :goto_b1

    .line 1512
    .end local v8    # "serial":Ljava/lang/String;
    .end local v9    # "privilegeMessage":Ljava/lang/String;
    .end local v10    # "server_time":J
    .end local v12    # "local_time":J
    .end local v15    # "dateNow":Ljava/util/Date;
    .end local v17    # "error_message":Ljava/lang/String;
    .end local v18    # "i":I
    .end local v19    # "jsonRoot":Lorg/json/JSONObject;
    :cond_1a7
    const-string v22, ""

    .line 1515
    .local v22, "message":Ljava/lang/String;
    :try_start_1a9
    new-instance v21, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1516
    .local v21, "json_result":Lorg/json/JSONObject;
    const-string v2, "error"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 1517
    .local v20, "json_error":Lorg/json/JSONObject;
    const-string v2, "message"

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1c3
    .catch Ljava/lang/Exception; {:try_start_1a9 .. :try_end_1c3} :catch_1ec

    move-result-object v22

    .line 1522
    .end local v20    # "json_error":Lorg/json/JSONObject;
    .end local v21    # "json_result":Lorg/json/JSONObject;
    :goto_1c4
    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d4

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1526
    :cond_1d4
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$1(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v4}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v4

    move-object/from16 v0, v22

    # invokes: Lic/buzzebeeslib/activity/PurchasingListActivity;->showDialogError(Ljava/lang/String;ZLic/buzzebeeslib/bean/Purchasing;)V
    invoke-static {v2, v0, v3, v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$28(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/lang/String;ZLic/buzzebeeslib/bean/Purchasing;)V

    goto/16 :goto_b1

    .line 1518
    :catch_1ec
    move-exception v2

    goto :goto_1c4
.end method
