.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$23;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->setRedeemButtonColor(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

.field final synthetic val$isRedeeming:Z


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 2334
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$23;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iput-boolean p2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$23;->val$isRedeeming:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const v2, 0x7f1000cd

    .line 2338
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$23;->val$isRedeeming:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 2339
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$23;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "#cccccc"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2344
    :goto_18
    return-void

    .line 2341
    :cond_19
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$23;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02034f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_18
.end method
