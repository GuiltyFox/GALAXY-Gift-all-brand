.class Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$2;
.super Ljava/lang/Object;
.source "MarketPlaceReviewListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->playPoint(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

.field private final synthetic val$points:I


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$2;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    iput p2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$2;->val$points:I

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 347
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$2;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$2;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    sget v4, Lic/buzzebeeslib/R$idMarketReviewList;->layoutPoints:I

    invoke-virtual {v2, v4}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-static {v3, v2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$18(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Landroid/widget/RelativeLayout;)V

    .line 348
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$2;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gLayoutPoints:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$19(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 350
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$2;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 351
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lic/buzzebeeslib/R$layout;->bz_point_alert:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 352
    .local v1, "viewPoints":Landroid/view/View;
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$2;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    sget v2, Lic/buzzebeeslib/R$idPoints;->layoutRootAnimation:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-static {v3, v2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$20(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Landroid/widget/RelativeLayout;)V

    .line 353
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$2;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    sget v2, Lic/buzzebeeslib/R$idPoints;->imgCash1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$21(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Landroid/widget/ImageView;)V

    .line 354
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$2;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    sget v2, Lic/buzzebeeslib/R$idPoints;->imgCash2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$22(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Landroid/widget/ImageView;)V

    .line 355
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$2;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    sget v2, Lic/buzzebeeslib/R$idPoints;->imgCash3:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$23(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Landroid/widget/ImageView;)V

    .line 356
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$2;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    sget v2, Lic/buzzebeeslib/R$idPoints;->imgCash4:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$24(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Landroid/widget/ImageView;)V

    .line 357
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$2;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    sget v2, Lic/buzzebeeslib/R$idPoints;->imgComma1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$25(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Landroid/widget/ImageView;)V

    .line 359
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$2;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gLayoutPoints:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$19(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 362
    iget v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$2;->val$points:I

    const-string v3, ""

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$2;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$14(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$2;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    invoke-static {v2, v3, v4, v5}, Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V

    .line 363
    return-void
.end method
