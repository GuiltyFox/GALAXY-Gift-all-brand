.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19$2;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;)V
    .registers 2

    .prologue
    .line 2451
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19$2;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2454
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19$2;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2455
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19$2;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2456
    return-void
.end method
