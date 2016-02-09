.class Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$21;
.super Ljava/lang/Object;
.source "MarketPlaceDetail2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->playPoint(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

.field private final synthetic val$points:I


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$21;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    iput p2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$21;->val$points:I

    .line 2840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 2842
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$21;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$21;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    sget v4, Lic/buzzebeeslib/R$id;->layoutPoints:I

    invoke-virtual {v2, v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-static {v3, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$40(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/widget/RelativeLayout;)V

    .line 2843
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$21;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutPoints:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$41(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 2845
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$21;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2846
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lic/buzzebeeslib/R$layout;->bz_point_alert:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2847
    .local v1, "viewPoints":Landroid/view/View;
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$21;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    sget v2, Lic/buzzebeeslib/R$idPoints;->layoutRootAnimation:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-static {v3, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$42(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/widget/RelativeLayout;)V

    .line 2848
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$21;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    sget v2, Lic/buzzebeeslib/R$idPoints;->imgCash1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$43(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/widget/ImageView;)V

    .line 2849
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$21;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    sget v2, Lic/buzzebeeslib/R$idPoints;->imgCash2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$44(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/widget/ImageView;)V

    .line 2850
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$21;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    sget v2, Lic/buzzebeeslib/R$idPoints;->imgCash3:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$45(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/widget/ImageView;)V

    .line 2851
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$21;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    sget v2, Lic/buzzebeeslib/R$idPoints;->imgCash4:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$46(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/widget/ImageView;)V

    .line 2852
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$21;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    sget v2, Lic/buzzebeeslib/R$idPoints;->imgComma1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$47(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/widget/ImageView;)V

    .line 2854
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$21;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutPoints:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$41(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2859
    iget v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$21;->val$points:I

    const-string v3, ""

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$21;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$14(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$21;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-static {v2, v3, v4, v5}, Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V

    .line 2860
    return-void
.end method
