.class Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$13$1;
.super Ljava/lang/Object;
.source "CampaignDetailPremiumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$13;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$13;

.field private final synthetic val$imagePopupMyPoint:Landroid/widget/ImageView;

.field private final synthetic val$layoutPopupMyPoint:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$13;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$13$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$13;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$13$1;->val$layoutPopupMyPoint:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$13$1;->val$imagePopupMyPoint:Landroid/widget/ImageView;

    .line 2061
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 2063
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$13$1;->val$layoutPopupMyPoint:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2064
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$13$1;->val$imagePopupMyPoint:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2065
    return-void
.end method
