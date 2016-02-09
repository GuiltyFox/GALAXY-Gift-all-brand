.class Lic/buzzebeeslib/activity/CampaignDetailAdActivity$18;
.super Ljava/lang/Object;
.source "CampaignDetailAdActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->playPoint(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

.field private final synthetic val$points:I


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$18;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    iput p2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$18;->val$points:I

    .line 1580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1582
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$18;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$18;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v4, Lic/buzzebeeslib/R$idCampaignDetailAd;->layoutPoints:I

    invoke-virtual {v2, v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-static {v3, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$27(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Landroid/widget/RelativeLayout;)V

    .line 1583
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$18;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gLayoutPoints:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$28(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1585
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$18;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1586
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lic/buzzebeeslib/R$layout;->bz_point_alert:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1587
    .local v1, "viewPoints":Landroid/view/View;
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$18;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v2, Lic/buzzebeeslib/R$idPoints;->layoutRootAnimation:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-static {v3, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$29(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Landroid/widget/RelativeLayout;)V

    .line 1588
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$18;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v2, Lic/buzzebeeslib/R$idPoints;->imgCash1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$30(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Landroid/widget/ImageView;)V

    .line 1589
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$18;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v2, Lic/buzzebeeslib/R$idPoints;->imgCash2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$31(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Landroid/widget/ImageView;)V

    .line 1590
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$18;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v2, Lic/buzzebeeslib/R$idPoints;->imgCash3:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$32(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Landroid/widget/ImageView;)V

    .line 1591
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$18;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v2, Lic/buzzebeeslib/R$idPoints;->imgCash4:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$33(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Landroid/widget/ImageView;)V

    .line 1592
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$18;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v2, Lic/buzzebeeslib/R$idPoints;->imgComma1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$34(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Landroid/widget/ImageView;)V

    .line 1594
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$18;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gLayoutPoints:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$28(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1597
    iget v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$18;->val$points:I

    const-string v3, ""

    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$18;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$35(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$18;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-static {v2, v3, v4, v5}, Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V

    .line 1598
    return-void
.end method
