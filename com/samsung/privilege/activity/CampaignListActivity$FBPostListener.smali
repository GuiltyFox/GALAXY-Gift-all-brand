.class Lcom/samsung/privilege/activity/CampaignListActivity$FBPostListener;
.super Ljava/lang/Object;
.source "CampaignListActivity.java"

# interfaces
.implements Lcom/facebook/android/PostEvents$PostListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FBPostListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignListActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity;)V
    .registers 2

    .prologue
    .line 2308
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity;Lcom/samsung/privilege/activity/CampaignListActivity$FBPostListener;)V
    .registers 3

    .prologue
    .line 2308
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignListActivity$FBPostListener;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/CampaignListActivity$FBPostListener;)Lcom/samsung/privilege/activity/CampaignListActivity;
    .registers 2

    .prologue
    .line 2308
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    return-object v0
.end method


# virtual methods
.method public onPostBegin()V
    .registers 1

    .prologue
    .line 2313
    return-void
.end method

.method public onPostFail(Ljava/lang/String;Lcom/samsung/privilege/PostData;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "postData"    # Lcom/samsung/privilege/PostData;

    .prologue
    .line 2328
    return-void
.end method

.method public onPostReviewSucceed(Lorg/json/JSONObject;ILjava/util/ArrayList;)V
    .registers 4
    .param p1, "jsonRoot"    # Lorg/json/JSONObject;
    .param p2, "points"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/BadgeAlert;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2323
    .local p3, "badgeAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/BadgeAlert;>;"
    return-void
.end method

.method public onPostSucceed(Ljava/lang/String;ILjava/util/ArrayList;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "points"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/BadgeAlert;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2318
    .local p3, "badgeAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/BadgeAlert;>;"
    return-void
.end method

.method public onPremiumChanged()V
    .registers 3

    .prologue
    .line 2332
    const-string v0, "CampaignListActivity"

    const-string v1, "onPremiumChanged"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2334
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignListActivity$FBPostListener$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignListActivity$FBPostListener$1;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity$FBPostListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2344
    return-void
.end method
