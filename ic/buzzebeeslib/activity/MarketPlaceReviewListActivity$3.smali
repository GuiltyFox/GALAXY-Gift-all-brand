.class Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$3;
.super Ljava/lang/Object;
.source "MarketPlaceReviewListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->playBadge(Lic/buzzebeeslib/bean/BadgeAlert;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

.field private final synthetic val$badgeAlert:Lic/buzzebeeslib/bean/BadgeAlert;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Lic/buzzebeeslib/bean/BadgeAlert;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$3;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$3;->val$badgeAlert:Lic/buzzebeeslib/bean/BadgeAlert;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x4

    .line 386
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$3;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    sget v4, Lic/buzzebeeslib/R$idMarketReviewList;->layoutBadgeAlert:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 387
    .local v1, "layoutBadgeAlert":Landroid/widget/RelativeLayout;
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$3;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$26(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/widget/ImageView;

    move-result-object v3

    if-nez v3, :cond_8d

    .line 388
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$3;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 389
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lic/buzzebeeslib/R$layout;->bz_badge_alert:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 391
    .local v2, "viewBadgeAlert":Landroid/view/View;
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$3;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    sget v3, Lic/buzzebeeslib/R$idBadgeAlert;->layoutRoot:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-static {v4, v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$27(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Landroid/widget/LinearLayout;)V

    .line 392
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$3;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    sget v3, Lic/buzzebeeslib/R$idBadgeAlert;->imgBadgeLarge:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {v4, v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$28(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Landroid/widget/ImageView;)V

    .line 393
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$3;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    sget v3, Lic/buzzebeeslib/R$idBadgeAlert;->layoutNewbie:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-static {v4, v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$29(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Landroid/widget/RelativeLayout;)V

    .line 395
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$3;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$26(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 397
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$3;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    sget v3, Lic/buzzebeeslib/R$idBadgeAlert;->tvBadgeName:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v4, v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$30(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Landroid/widget/TextView;)V

    .line 398
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$3;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    sget v3, Lic/buzzebeeslib/R$idBadgeAlert;->tvBadgePoint:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v4, v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$31(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Landroid/widget/TextView;)V

    .line 400
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$3;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    sget v3, Lic/buzzebeeslib/R$idBadgeAlert;->layoutBadgeName:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-static {v4, v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$32(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Landroid/widget/RelativeLayout;)V

    .line 401
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$3;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$33(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 403
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$3;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gLayoutRoot:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$34(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 406
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "viewBadgeAlert":Landroid/view/View;
    :cond_8d
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$3;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$3;->val$badgeAlert:Lic/buzzebeeslib/bean/BadgeAlert;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->PlayBadgeAnimation(Lic/buzzebeeslib/bean/BadgeAlert;)V
    invoke-static {v3, v4}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$35(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Lic/buzzebeeslib/bean/BadgeAlert;)V

    .line 407
    return-void
.end method
