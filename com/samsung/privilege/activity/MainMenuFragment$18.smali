.class Lcom/samsung/privilege/activity/MainMenuFragment$18;
.super Ljava/lang/Object;
.source "MainMenuFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainMenuFragment;->ProcessJsonHistory(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$18;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$18;->val$response_text:Ljava/lang/String;

    .line 2473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 2476
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    iget-object v9, p0, Lcom/samsung/privilege/activity/MainMenuFragment$18;->val$response_text:Ljava/lang/String;

    invoke-direct {v6, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2477
    .local v6, "jsonRoot":Lorg/json/JSONArray;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2479
    .local v5, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/MainMenuItemModel;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v2, v9, :cond_34

    .line 2516
    iget-object v9, p0, Lcom/samsung/privilege/activity/MainMenuFragment$18;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->alreadyHaveHistory()Z
    invoke-static {v9}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$25(Lcom/samsung/privilege/activity/MainMenuFragment;)Z

    move-result v9

    if-nez v9, :cond_a7

    .line 2517
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_2a

    .line 2526
    iget-object v9, p0, Lcom/samsung/privilege/activity/MainMenuFragment$18;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;
    invoke-static {v9}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$16(Lcom/samsung/privilege/activity/MainMenuFragment;)Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->addItemAll(Ljava/util/ArrayList;)V

    .line 2543
    :cond_2a
    iget-object v9, p0, Lcom/samsung/privilege/activity/MainMenuFragment$18;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;
    invoke-static {v9}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$16(Lcom/samsung/privilege/activity/MainMenuFragment;)Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->notifyDataSetChanged()V

    .line 2547
    .end local v2    # "i":I
    .end local v5    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/MainMenuItemModel;>;"
    .end local v6    # "jsonRoot":Lorg/json/JSONArray;
    :goto_33
    return-void

    .line 2480
    .restart local v2    # "i":I
    .restart local v5    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/MainMenuItemModel;>;"
    .restart local v6    # "jsonRoot":Lorg/json/JSONArray;
    :cond_34
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 2481
    .local v7, "json_history":Lorg/json/JSONObject;
    new-instance v8, Lcom/samsung/privilege/bean/Purchasing;

    invoke-direct {v8, v7}, Lcom/samsung/privilege/bean/Purchasing;-><init>(Lorg/json/JSONObject;)V

    .line 2483
    .local v8, "purchasing":Lcom/samsung/privilege/bean/Purchasing;
    new-instance v4, Lcom/samsung/privilege/bean/MainMenuItemModel;

    invoke-direct {v4}, Lcom/samsung/privilege/bean/MainMenuItemModel;-><init>()V

    .line 2484
    .local v4, "item":Lcom/samsung/privilege/bean/MainMenuItemModel;
    const/4 v9, 0x3

    iput v9, v4, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    .line 2485
    iput-object v8, v4, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    .line 2486
    iget-object v9, v8, Lcom/samsung/privilege/bean/Purchasing;->RedeemKey:Ljava/lang/String;

    iput-object v9, v4, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_id:Ljava/lang/String;

    .line 2487
    iget-object v9, v8, Lcom/samsung/privilege/bean/Purchasing;->ID:Ljava/lang/String;

    iput-object v9, v4, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_campaign_id:Ljava/lang/String;

    .line 2488
    iget-object v9, v8, Lcom/samsung/privilege/bean/Purchasing;->CategoryID:Ljava/lang/String;

    iput-object v9, v4, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_cat_id:Ljava/lang/String;

    .line 2489
    iget-object v9, v8, Lcom/samsung/privilege/bean/Purchasing;->Type:Ljava/lang/String;

    iput-object v9, v4, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_type:Ljava/lang/String;

    .line 2490
    iget-object v9, v8, Lcom/samsung/privilege/bean/Purchasing;->Name:Ljava/lang/String;

    iput-object v9, v4, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_detail:Ljava/lang/String;

    .line 2491
    iget v9, v8, Lcom/samsung/privilege/bean/Purchasing;->LocationAgencyId:I

    iput v9, v4, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_location_agency_id:I

    .line 2492
    iget-object v9, v8, Lcom/samsung/privilege/bean/Purchasing;->AgencyID:Ljava/lang/String;

    iput-object v9, v4, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_agencyid:Ljava/lang/String;

    .line 2493
    iget-object v9, v8, Lcom/samsung/privilege/bean/Purchasing;->AgencyName:Ljava/lang/String;

    iput-object v9, v4, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_agencyname:Ljava/lang/String;

    .line 2494
    iget-object v9, v8, Lcom/samsung/privilege/bean/Purchasing;->Serial:Ljava/lang/String;

    iput-object v9, v4, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_serial:Ljava/lang/String;

    .line 2495
    iget-object v9, v8, Lcom/samsung/privilege/bean/Purchasing;->Barcode:Ljava/lang/String;

    iput-object v9, v4, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_barcode:Ljava/lang/String;

    .line 2496
    iget-wide v10, v8, Lcom/samsung/privilege/bean/Purchasing;->RedeemDate:J

    iput-wide v10, v4, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_redeem_date:J

    .line 2497
    iget v9, v8, Lcom/samsung/privilege/bean/Purchasing;->MinutesValidAfterUsed:I

    iput v9, v4, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_minutes_valid_after_used:I

    .line 2498
    iget-object v9, v8, Lcom/samsung/privilege/bean/Purchasing;->PrivilegeMessage:Ljava/lang/String;

    iput-object v9, v4, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_privilege_message:Ljava/lang/String;

    .line 2500
    iget-boolean v9, v8, Lcom/samsung/privilege/bean/Purchasing;->IsInstalledApp:Z

    if-nez v9, :cond_9e

    .line 2501
    const/4 v1, 0x0

    .line 2502
    .local v1, "hasApp":Z
    iget-object v9, v8, Lcom/samsung/privilege/bean/Purchasing;->InstallPackageName:Ljava/lang/String;

    if-eqz v9, :cond_a5

    iget-object v9, v8, Lcom/samsung/privilege/bean/Purchasing;->InstallPackageName:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a5

    .line 2503
    iget-object v9, p0, Lcom/samsung/privilege/activity/MainMenuFragment$18;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    iget-object v10, v8, Lcom/samsung/privilege/bean/Purchasing;->InstallPackageName:Ljava/lang/String;

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->appInstalledOrNot(Ljava/lang/String;)Z
    invoke-static {v9, v10}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$14(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)Z

    move-result v1

    .line 2507
    :goto_96
    if-eqz v1, :cond_9e

    .line 2508
    iget-object v9, p0, Lcom/samsung/privilege/activity/MainMenuFragment$18;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$17(Lcom/samsung/privilege/activity/MainMenuFragment;Z)V

    .line 2512
    .end local v1    # "hasApp":Z
    :cond_9e
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2479
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    .line 2505
    .restart local v1    # "hasApp":Z
    :cond_a5
    const/4 v1, 0x0

    goto :goto_96

    .line 2529
    .end local v1    # "hasApp":Z
    .end local v4    # "item":Lcom/samsung/privilege/bean/MainMenuItemModel;
    .end local v7    # "json_history":Lorg/json/JSONObject;
    .end local v8    # "purchasing":Lcom/samsung/privilege/bean/Purchasing;
    :cond_a7
    const/4 v2, 0x0

    :goto_a8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_2a

    .line 2530
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/privilege/bean/MainMenuItemModel;

    .line 2531
    .restart local v4    # "item":Lcom/samsung/privilege/bean/MainMenuItemModel;
    iget-object v9, p0, Lcom/samsung/privilege/activity/MainMenuFragment$18;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    iget-object v10, v4, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_id:Ljava/lang/String;

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->checkExistHistory(Ljava/lang/String;)Z
    invoke-static {v9, v10}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$26(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d2

    .line 2532
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_play_animation:Z

    .line 2533
    iget-object v9, p0, Lcom/samsung/privilege/activity/MainMenuFragment$18;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->findIndexTopHistory()I
    invoke-static {v9}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$27(Lcom/samsung/privilege/activity/MainMenuFragment;)I

    move-result v3

    .line 2534
    .local v3, "indexAppend":I
    if-lez v3, :cond_d2

    .line 2535
    iget-object v9, p0, Lcom/samsung/privilege/activity/MainMenuFragment$18;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;
    invoke-static {v9}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$16(Lcom/samsung/privilege/activity/MainMenuFragment;)Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->addItem(ILcom/samsung/privilege/bean/MainMenuItemModel;)V
    :try_end_d2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_d2} :catch_d5

    .line 2529
    .end local v3    # "indexAppend":I
    :cond_d2
    add-int/lit8 v2, v2, 0x1

    goto :goto_a8

    .line 2544
    .end local v2    # "i":I
    .end local v4    # "item":Lcom/samsung/privilege/bean/MainMenuItemModel;
    .end local v5    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/MainMenuItemModel;>;"
    .end local v6    # "jsonRoot":Lorg/json/JSONArray;
    :catch_d5
    move-exception v0

    .line 2545
    .local v0, "e":Lorg/json/JSONException;
    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$0()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "(JSONException|GetHistoryListener|onComplete|1): Error "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33
.end method
