.class Lcom/samsung/privilege/activity/MainMenuFragment$19;
.super Ljava/lang/Object;
.source "MainMenuFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainMenuFragment;->addNotification(Lcom/samsung/privilege/bean/MessageGCM;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

.field private final synthetic val$isPlayAnimation:Z

.field private final synthetic val$messageGCM:Lcom/samsung/privilege/bean/MessageGCM;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment;Lcom/samsung/privilege/bean/MessageGCM;Z)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$19;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$19;->val$messageGCM:Lcom/samsung/privilege/bean/MessageGCM;

    iput-boolean p3, p0, Lcom/samsung/privilege/activity/MainMenuFragment$19;->val$isPlayAnimation:Z

    .line 2588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 2590
    const/4 v3, -0x1

    .line 2591
    .local v3, "indexSignOut":I
    const/4 v1, -0x1

    .line 2592
    .local v1, "indexHistory":I
    const/4 v2, -0x1

    .line 2593
    .local v2, "indexNotification":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v7, p0, Lcom/samsung/privilege/activity/MainMenuFragment$19;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;
    invoke-static {v7}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$16(Lcom/samsung/privilege/activity/MainMenuFragment;)Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->getCount()I

    move-result v7

    if-lt v0, v7, :cond_71

    .line 2606
    const/4 v7, -0x1

    if-ne v2, v7, :cond_2c

    .line 2607
    new-instance v4, Lcom/samsung/privilege/bean/MainMenuItemModel;

    invoke-direct {v4}, Lcom/samsung/privilege/bean/MainMenuItemModel;-><init>()V

    .line 2608
    .local v4, "itemHeader":Lcom/samsung/privilege/bean/MainMenuItemModel;
    const/4 v7, 0x0

    iput v7, v4, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    .line 2609
    const-string v7, "Notification"

    iput-object v7, v4, Lcom/samsung/privilege/bean/MainMenuItemModel;->header:Ljava/lang/String;

    .line 2610
    iget-object v7, p0, Lcom/samsung/privilege/activity/MainMenuFragment$19;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;
    invoke-static {v7}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$16(Lcom/samsung/privilege/activity/MainMenuFragment;)Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8, v4}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->addItem(ILcom/samsung/privilege/bean/MainMenuItemModel;)V

    .line 2611
    add-int/lit8 v2, v3, 0x1

    .line 2614
    .end local v4    # "itemHeader":Lcom/samsung/privilege/bean/MainMenuItemModel;
    :cond_2c
    new-instance v5, Lcom/samsung/privilege/bean/MainMenuItemModel;

    invoke-direct {v5}, Lcom/samsung/privilege/bean/MainMenuItemModel;-><init>()V

    .line 2615
    .local v5, "itemNoti":Lcom/samsung/privilege/bean/MainMenuItemModel;
    const/4 v7, 0x2

    iput v7, v5, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    .line 2616
    iget-object v7, p0, Lcom/samsung/privilege/activity/MainMenuFragment$19;->val$messageGCM:Lcom/samsung/privilege/bean/MessageGCM;

    iget-object v7, v7, Lcom/samsung/privilege/bean/MessageGCM;->object_id:Ljava/lang/String;

    iput-object v7, v5, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_id:Ljava/lang/String;

    .line 2617
    iget-object v7, p0, Lcom/samsung/privilege/activity/MainMenuFragment$19;->val$messageGCM:Lcom/samsung/privilege/bean/MessageGCM;

    iget-object v7, v7, Lcom/samsung/privilege/bean/MessageGCM;->type:Ljava/lang/String;

    iput-object v7, v5, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_cat_id:Ljava/lang/String;

    .line 2618
    iget-object v7, p0, Lcom/samsung/privilege/activity/MainMenuFragment$19;->val$messageGCM:Lcom/samsung/privilege/bean/MessageGCM;

    iget-object v7, v7, Lcom/samsung/privilege/bean/MessageGCM;->cp_cat_id:Ljava/lang/String;

    iput-object v7, v5, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_cp_cat_id:Ljava/lang/String;

    .line 2619
    iget-object v7, p0, Lcom/samsung/privilege/activity/MainMenuFragment$19;->val$messageGCM:Lcom/samsung/privilege/bean/MessageGCM;

    iget-object v7, v7, Lcom/samsung/privilege/bean/MessageGCM;->alert:Ljava/lang/String;

    iput-object v7, v5, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_detail:Ljava/lang/String;

    .line 2620
    iget-object v7, p0, Lcom/samsung/privilege/activity/MainMenuFragment$19;->val$messageGCM:Lcom/samsung/privilege/bean/MessageGCM;

    iget-object v7, v7, Lcom/samsung/privilege/bean/MessageGCM;->agency_id:Ljava/lang/String;

    iput-object v7, v5, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_agency_id:Ljava/lang/String;

    .line 2621
    iget-object v7, p0, Lcom/samsung/privilege/activity/MainMenuFragment$19;->val$messageGCM:Lcom/samsung/privilege/bean/MessageGCM;

    iget-object v7, v7, Lcom/samsung/privilege/bean/MessageGCM;->url:Ljava/lang/String;

    iput-object v7, v5, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_url:Ljava/lang/String;

    .line 2622
    iget-boolean v7, p0, Lcom/samsung/privilege/activity/MainMenuFragment$19;->val$isPlayAnimation:Z

    iput-boolean v7, v5, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_play_animation:Z

    .line 2623
    iget-object v7, p0, Lcom/samsung/privilege/activity/MainMenuFragment$19;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;
    invoke-static {v7}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$16(Lcom/samsung/privilege/activity/MainMenuFragment;)Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    move-result-object v7

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8, v5}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->addItem(ILcom/samsung/privilege/bean/MainMenuItemModel;)V

    .line 2625
    iget-object v7, p0, Lcom/samsung/privilege/activity/MainMenuFragment$19;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;
    invoke-static {v7}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$16(Lcom/samsung/privilege/activity/MainMenuFragment;)Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->notifyDataSetChanged()V

    .line 2626
    return-void

    .line 2594
    .end local v5    # "itemNoti":Lcom/samsung/privilege/bean/MainMenuItemModel;
    :cond_71
    iget-object v7, p0, Lcom/samsung/privilege/activity/MainMenuFragment$19;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;
    invoke-static {v7}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$16(Lcom/samsung/privilege/activity/MainMenuFragment;)Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/privilege/bean/MainMenuItemModel;

    .line 2595
    .local v6, "menuItem":Lcom/samsung/privilege/bean/MainMenuItemModel;
    iget v7, v6, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8d

    iget-object v7, v6, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    const-string v8, "sign_out"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8d

    .line 2596
    move v3, v0

    .line 2598
    :cond_8d
    iget v7, v6, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    if-nez v7, :cond_9c

    iget-object v7, v6, Lcom/samsung/privilege/bean/MainMenuItemModel;->header:Ljava/lang/String;

    const-string v8, "History"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9c

    .line 2599
    move v1, v0

    .line 2601
    :cond_9c
    iget v7, v6, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    if-nez v7, :cond_ab

    iget-object v7, v6, Lcom/samsung/privilege/bean/MainMenuItemModel;->header:Ljava/lang/String;

    const-string v8, "Notification"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ab

    .line 2602
    move v2, v0

    .line 2593
    :cond_ab
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4
.end method
