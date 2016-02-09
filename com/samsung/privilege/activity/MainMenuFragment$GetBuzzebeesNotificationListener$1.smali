.class Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener$1;
.super Ljava/lang/Object;
.source "MainMenuFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener;

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener$1;->val$response_text:Ljava/lang/String;

    .line 2074
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 2077
    :try_start_0
    new-instance v5, Lcom/samsung/privilege/bean/MainMenuItemModel;

    invoke-direct {v5}, Lcom/samsung/privilege/bean/MainMenuItemModel;-><init>()V

    .line 2078
    .local v5, "itemHeader":Lcom/samsung/privilege/bean/MainMenuItemModel;
    const/4 v8, 0x0

    iput v8, v5, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    .line 2079
    const-string v8, "Notification"

    iput-object v8, v5, Lcom/samsung/privilege/bean/MainMenuItemModel;->header:Ljava/lang/String;

    .line 2080
    iget-object v8, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v8}, Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v8

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;
    invoke-static {v8}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$16(Lcom/samsung/privilege/activity/MainMenuFragment;)Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->addItem(Lcom/samsung/privilege/bean/MainMenuItemModel;)V

    .line 2082
    new-instance v7, Lorg/json/JSONArray;

    iget-object v8, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v7, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2083
    .local v7, "jsonRoot":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .line 2084
    .local v3, "isFoundNoti":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v2, v8, :cond_5e

    .line 2112
    if-nez v3, :cond_47

    .line 2113
    new-instance v4, Lcom/samsung/privilege/bean/MainMenuItemModel;

    invoke-direct {v4}, Lcom/samsung/privilege/bean/MainMenuItemModel;-><init>()V

    .line 2114
    .local v4, "item":Lcom/samsung/privilege/bean/MainMenuItemModel;
    const/4 v8, 0x2

    iput v8, v4, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    .line 2115
    const-string v8, ""

    iput-object v8, v4, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_id:Ljava/lang/String;

    .line 2116
    const-string v8, "No new campaign!"

    iput-object v8, v4, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_detail:Ljava/lang/String;

    .line 2117
    iget-object v8, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v8}, Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v8

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;
    invoke-static {v8}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$16(Lcom/samsung/privilege/activity/MainMenuFragment;)Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->addItem(Lcom/samsung/privilege/bean/MainMenuItemModel;)V

    .line 2120
    .end local v4    # "item":Lcom/samsung/privilege/bean/MainMenuItemModel;
    :cond_47
    iget-object v8, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v8}, Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v8

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;
    invoke-static {v8}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$16(Lcom/samsung/privilege/activity/MainMenuFragment;)Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->notifyDataSetChanged()V

    .line 2121
    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$0()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mMainMenuAdapter.notifyDataSetChanged();"

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2125
    .end local v2    # "i":I
    .end local v3    # "isFoundNoti":Z
    .end local v5    # "itemHeader":Lcom/samsung/privilege/bean/MainMenuItemModel;
    .end local v7    # "jsonRoot":Lorg/json/JSONArray;
    :goto_5d
    return-void

    .line 2085
    .restart local v2    # "i":I
    .restart local v3    # "isFoundNoti":Z
    .restart local v5    # "itemHeader":Lcom/samsung/privilege/bean/MainMenuItemModel;
    .restart local v7    # "jsonRoot":Lorg/json/JSONArray;
    :cond_5e
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 2086
    .local v6, "jsonNoti":Lorg/json/JSONObject;
    new-instance v0, Lcom/samsung/privilege/bean/BuzzebeesNotification;

    invoke-direct {v0, v6}, Lcom/samsung/privilege/bean/BuzzebeesNotification;-><init>(Lorg/json/JSONObject;)V

    .line 2088
    .local v0, "bNoti":Lcom/samsung/privilege/bean/BuzzebeesNotification;
    iget-object v8, v0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->ObjectType:Ljava/lang/String;

    const-string v9, "campaign"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7b

    iget-object v8, v0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->ObjectType:Ljava/lang/String;

    const-string v9, "ads"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ab

    .line 2089
    :cond_7b
    iget-object v8, v0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->campaignObject:Lcom/samsung/privilege/bean/CampaignView;

    if-eqz v8, :cond_a7

    .line 2090
    new-instance v4, Lcom/samsung/privilege/bean/MainMenuItemModel;

    invoke-direct {v4}, Lcom/samsung/privilege/bean/MainMenuItemModel;-><init>()V

    .line 2091
    .restart local v4    # "item":Lcom/samsung/privilege/bean/MainMenuItemModel;
    const/4 v8, 0x2

    iput v8, v4, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    .line 2092
    iget-object v8, v0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->campaignObject:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v8, v8, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    iput-object v8, v4, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_id:Ljava/lang/String;

    .line 2093
    iget-object v8, v0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->campaignObject:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v8, v8, Lcom/samsung/privilege/bean/CampaignView;->CategoryID:Ljava/lang/String;

    iput-object v8, v4, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_id:Ljava/lang/String;

    .line 2094
    iget-object v8, v0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->campaignObject:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v8, v8, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    iput-object v8, v4, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_detail:Ljava/lang/String;

    .line 2095
    iget-object v8, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v8}, Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v8

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;
    invoke-static {v8}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$16(Lcom/samsung/privilege/activity/MainMenuFragment;)Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->addItem(Lcom/samsung/privilege/bean/MainMenuItemModel;)V

    .line 2096
    const/4 v3, 0x1

    .line 2084
    .end local v4    # "item":Lcom/samsung/privilege/bean/MainMenuItemModel;
    :cond_a7
    :goto_a7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_22

    .line 2098
    :cond_ab
    iget-object v8, v0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->ObjectType:Ljava/lang/String;

    const-string v9, "badge"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a7

    .line 2100
    iget-object v8, v0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->ObjectType:Ljava/lang/String;

    const-string v9, "message"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a7

    .line 2101
    iget-object v8, v0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->messageObject:Lcom/samsung/privilege/bean/MessageNotification;

    if-eqz v8, :cond_a7

    .line 2102
    new-instance v4, Lcom/samsung/privilege/bean/MainMenuItemModel;

    invoke-direct {v4}, Lcom/samsung/privilege/bean/MainMenuItemModel;-><init>()V

    .line 2103
    .restart local v4    # "item":Lcom/samsung/privilege/bean/MainMenuItemModel;
    const/4 v8, 0x2

    iput v8, v4, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    .line 2104
    const-string v8, ""

    iput-object v8, v4, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_id:Ljava/lang/String;

    .line 2105
    iget-object v8, v0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->messageObject:Lcom/samsung/privilege/bean/MessageNotification;

    iget-object v8, v8, Lcom/samsung/privilege/bean/MessageNotification;->message:Ljava/lang/String;

    iput-object v8, v4, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_detail:Ljava/lang/String;

    .line 2106
    iget-object v8, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v8}, Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v8

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;
    invoke-static {v8}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$16(Lcom/samsung/privilege/activity/MainMenuFragment;)Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->addItem(Lcom/samsung/privilege/bean/MainMenuItemModel;)V
    :try_end_e2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_e2} :catch_e4

    .line 2107
    const/4 v3, 0x1

    goto :goto_a7

    .line 2122
    .end local v0    # "bNoti":Lcom/samsung/privilege/bean/BuzzebeesNotification;
    .end local v2    # "i":I
    .end local v3    # "isFoundNoti":Z
    .end local v4    # "item":Lcom/samsung/privilege/bean/MainMenuItemModel;
    .end local v5    # "itemHeader":Lcom/samsung/privilege/bean/MainMenuItemModel;
    .end local v6    # "jsonNoti":Lorg/json/JSONObject;
    .end local v7    # "jsonRoot":Lorg/json/JSONArray;
    :catch_e4
    move-exception v1

    .line 2123
    .local v1, "e":Lorg/json/JSONException;
    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$0()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "(JSONException|GetBuzzebeesNotificationForCountListener|onComplete|1): Error "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5d
.end method
