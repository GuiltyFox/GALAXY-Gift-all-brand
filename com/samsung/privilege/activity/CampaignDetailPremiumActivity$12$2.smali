.class Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$12$2;
.super Ljava/lang/Object;
.source "CampaignDetailPremiumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$12;->onAnimationStart(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$12;

.field private final synthetic val$imagePopupMyPoint:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$12;Landroid/widget/ImageView;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$12$2;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$12;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$12$2;->val$imagePopupMyPoint:Landroid/widget/ImageView;

    .line 2038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2040
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$12$2;->val$imagePopupMyPoint:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2041
    return-void
.end method
