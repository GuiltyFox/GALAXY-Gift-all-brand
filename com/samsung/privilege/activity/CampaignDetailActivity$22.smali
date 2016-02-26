.class Lcom/samsung/privilege/activity/CampaignDetailActivity$22;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity;->ShowTabGallery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$22;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    .line 2957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$22;)Lcom/samsung/privilege/activity/CampaignDetailActivity;
    .registers 2

    .prologue
    .line 2957
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$22;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 2960
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$22;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailActivity;->inFromBottomAnimationSet()Landroid/view/animation/AnimationSet;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$37(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    .line 2961
    .local v1, "inFromBottom":Landroid/view/animation/Animation;
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 2962
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2963
    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2965
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$22;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    const/high16 v4, 0x7f3e0000

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 2966
    .local v2, "layoutGallery":Landroid/widget/RelativeLayout;
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2967
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2968
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$22;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    const v4, 0x7f3e0005

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2969
    .local v0, "imgGallery01":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$1;

    invoke-direct {v4, p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$22;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2982
    new-instance v3, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$22;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3009
    return-void
.end method
