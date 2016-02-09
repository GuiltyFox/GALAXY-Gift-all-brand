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
    .registers 23

    .prologue
    .line 1470
    move-object/from16 v0, p0

    iget v1, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->val$response_code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1a7

    .line 1472
    const-string v16, ""

    .line 1475
    .local v16, "error_message":Ljava/lang/String;
    :try_start_a
    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1477
    .local v18, "jsonRoot":Lorg/json/JSONObject;
    const-string v1, "PrivilegeMessage"

    move-object/from16 v0, v18

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1478
    .local v8, "privilegeMessage":Ljava/lang/String;
    const-string v1, "Serial"

    move-object/from16 v0, v18

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1479
    .local v7, "serial":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v1}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v1

    const-string v2, "ExpireIn"

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lic/buzzebeeslib/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lic/buzzebeeslib/bean/Purchasing;->ExpireIn:J

    .line 1480
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v1}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lic/buzzebeeslib/bean/Purchasing;->IsUsed:Z

    .line 1482
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_44
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$1(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gArrayListPurchasing:Ljava/util/ArrayList;
    invoke-static {v1}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$25(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v0, v17

    if-lt v0, v1, :cond_b2

    .line 1492
    :goto_58
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    .line 1494
    .local v14, "dateNow":Ljava/util/Date;
    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long v9, v1, v3

    .line 1495
    .local v9, "server_time":J
    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long v11, v1, v3

    .line 1497
    .local v11, "local_time":J
    sget v1, Lic/buzzebeeslib/util/ThemesUtil;->gTheme:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_120

    .line 1498
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$1(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v2

    iget-object v2, v2, Lic/buzzebeeslib/bean/Purchasing;->ID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v3}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v3

    iget-object v3, v3, Lic/buzzebeeslib/bean/Purchasing;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v4}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v4

    iget-object v4, v4, Lic/buzzebeeslib/bean/Purchasing;->Name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v5

    iget-wide v5, v5, Lic/buzzebeeslib/bean/Purchasing;->ExpireIn:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v13}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$1(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v13

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v13}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$27(Lic/buzzebeeslib/activity/PurchasingListActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v13

    invoke-static/range {v1 .. v13}, Lic/buzzebeeslib/util/DialogUtil;->showDialogSerial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJLcom/bitmapfun/util/ImageFetcher;)V

    .line 1529
    .end local v7    # "serial":Ljava/lang/String;
    .end local v8    # "privilegeMessage":Ljava/lang/String;
    .end local v9    # "server_time":J
    .end local v11    # "local_time":J
    .end local v14    # "dateNow":Ljava/util/Date;
    .end local v16    # "error_message":Ljava/lang/String;
    .end local v17    # "i":I
    .end local v18    # "jsonRoot":Lorg/json/JSONObject;
    :goto_b1
    return-void

    .line 1483
    .restart local v7    # "serial":Ljava/lang/String;
    .restart local v8    # "privilegeMessage":Ljava/lang/String;
    .restart local v16    # "error_message":Ljava/lang/String;
    .restart local v17    # "i":I
    .restart local v18    # "jsonRoot":Lorg/json/JSONObject;
    :cond_b2
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$1(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gArrayListPurchasing:Ljava/util/ArrayList;
    invoke-static {v1}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$25(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/Purchasing;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Purchasing;->ID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v2

    iget-object v2, v2, Lic/buzzebeeslib/bean/Purchasing;->ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11c

    .line 1484
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$1(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gArrayListPurchasing:Ljava/util/ArrayList;
    invoke-static {v1}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$25(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/Purchasing;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lic/buzzebeeslib/bean/Purchasing;->IsUsed:Z

    .line 1485
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$1(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gAdapter:Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;
    invoke-static {v1}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$26(Lic/buzzebeeslib/activity/PurchasingListActivity;)Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;->notifyDataSetChanged()V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_fe} :catch_100

    goto/16 :goto_58

    .line 1504
    .end local v7    # "serial":Ljava/lang/String;
    .end local v8    # "privilegeMessage":Ljava/lang/String;
    .end local v17    # "i":I
    .end local v18    # "jsonRoot":Lorg/json/JSONObject;
    :catch_100
    move-exception v15

    .line 1505
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    .line 1506
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$1(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v3}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v3

    move-object/from16 v0, v16

    # invokes: Lic/buzzebeeslib/activity/PurchasingListActivity;->showDialogError(Ljava/lang/String;ZLic/buzzebeeslib/bean/Purchasing;)V
    invoke-static {v1, v0, v2, v3}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$28(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/lang/String;ZLic/buzzebeeslib/bean/Purchasing;)V

    goto :goto_b1

    .line 1482
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v7    # "serial":Ljava/lang/String;
    .restart local v8    # "privilegeMessage":Ljava/lang/String;
    .restart local v17    # "i":I
    .restart local v18    # "jsonRoot":Lorg/json/JSONObject;
    :cond_11c
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_44

    .line 1499
    .restart local v9    # "server_time":J
    .restart local v11    # "local_time":J
    .restart local v14    # "dateNow":Ljava/util/Date;
    :cond_120
    :try_start_120
    sget v1, Lic/buzzebeeslib/util/ThemesUtil;->gTheme:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_166

    .line 1500
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$1(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v2

    iget-object v2, v2, Lic/buzzebeeslib/bean/Purchasing;->ID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v3}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v3

    iget-object v3, v3, Lic/buzzebeeslib/bean/Purchasing;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v4}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v4

    iget-object v4, v4, Lic/buzzebeeslib/bean/Purchasing;->Name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v5

    iget-wide v5, v5, Lic/buzzebeeslib/bean/Purchasing;->ExpireIn:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v13}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$1(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v13

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v13}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$27(Lic/buzzebeeslib/activity/PurchasingListActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v13

    invoke-static/range {v1 .. v13}, Lic/buzzebeeslib/util/DialogUtil;->showDialogSerialGift(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJLcom/bitmapfun/util/ImageFetcher;)V

    goto/16 :goto_b1

    .line 1502
    :cond_166
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$1(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v2

    iget-object v2, v2, Lic/buzzebeeslib/bean/Purchasing;->ID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v3}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v3

    iget-object v3, v3, Lic/buzzebeeslib/bean/Purchasing;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v4}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v4

    iget-object v4, v4, Lic/buzzebeeslib/bean/Purchasing;->Name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v5

    iget-wide v5, v5, Lic/buzzebeeslib/bean/Purchasing;->ExpireIn:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v13}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$1(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v13

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v13}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$27(Lic/buzzebeeslib/activity/PurchasingListActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v13

    invoke-static/range {v1 .. v13}, Lic/buzzebeeslib/util/DialogUtil;->showDialogSerial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJLcom/bitmapfun/util/ImageFetcher;)V
    :try_end_1a5
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_1a5} :catch_100

    goto/16 :goto_b1

    .line 1512
    .end local v7    # "serial":Ljava/lang/String;
    .end local v8    # "privilegeMessage":Ljava/lang/String;
    .end local v9    # "server_time":J
    .end local v11    # "local_time":J
    .end local v14    # "dateNow":Ljava/util/Date;
    .end local v16    # "error_message":Ljava/lang/String;
    .end local v17    # "i":I
    .end local v18    # "jsonRoot":Lorg/json/JSONObject;
    :cond_1a7
    const-string v21, ""

    .line 1515
    .local v21, "message":Ljava/lang/String;
    :try_start_1a9
    new-instance v20, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1516
    .local v20, "json_result":Lorg/json/JSONObject;
    const-string v1, "error"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    .line 1517
    .local v19, "json_error":Lorg/json/JSONObject;
    const-string v1, "message"

    move-object/from16 v0, v19

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1c3
    .catch Ljava/lang/Exception; {:try_start_1a9 .. :try_end_1c3} :catch_1ec

    move-result-object v21

    .line 1522
    .end local v19    # "json_error":Lorg/json/JSONObject;
    .end local v20    # "json_result":Lorg/json/JSONObject;
    :goto_1c4
    const-string v1, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d4

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1526
    :cond_1d4
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$1(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;
    invoke-static {v3}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;)Lic/buzzebeeslib/bean/Purchasing;

    move-result-object v3

    move-object/from16 v0, v21

    # invokes: Lic/buzzebeeslib/activity/PurchasingListActivity;->showDialogError(Ljava/lang/String;ZLic/buzzebeeslib/bean/Purchasing;)V
    invoke-static {v1, v0, v2, v3}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$28(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/lang/String;ZLic/buzzebeeslib/bean/Purchasing;)V

    goto/16 :goto_b1

    .line 1518
    :catch_1ec
    move-exception v1

    goto :goto_1c4
.end method
