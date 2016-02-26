.class Lcom/samsung/privilege/activity/CampaignListActivity$FBPostListener$1;
.super Ljava/lang/Object;
.source "CampaignListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListActivity$FBPostListener;->onPremiumChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignListActivity$FBPostListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity$FBPostListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$FBPostListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$FBPostListener;

    .line 2352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2354
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$FBPostListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$FBPostListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity$FBPostListener;->access$1(Lcom/samsung/privilege/activity/CampaignListActivity$FBPostListener;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v1

    const v2, 0x7f2a0040

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2355
    .local v0, "imgLogo":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$FBPostListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$FBPostListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity$FBPostListener;->access$1(Lcom/samsung/privilege/activity/CampaignListActivity$FBPostListener;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->GetIsPremium(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2356
    const v1, 0x7f0202bc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2360
    :goto_25
    return-void

    .line 2358
    :cond_26
    const v1, 0x7f0202bb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_25
.end method
