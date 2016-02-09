.class Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$27;
.super Ljava/lang/Object;
.source "MarketPlaceDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->playPoint(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

.field private final synthetic val$points:I


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    iput p2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$27;->val$points:I

    .line 3968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 3970
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    sget v4, Lic/buzzebeeslib/R$id;->layoutPoints:I

    invoke-virtual {v2, v4}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-static {v3, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$63(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/widget/RelativeLayout;)V

    .line 3971
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutPoints:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$64(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 3973
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 3974
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lic/buzzebeeslib/R$layout;->bz_point_alert:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 3975
    .local v1, "viewPoints":Landroid/view/View;
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    sget v2, Lic/buzzebeeslib/R$idPoints;->layoutRootAnimation:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-static {v3, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$65(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/widget/RelativeLayout;)V

    .line 3976
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    sget v2, Lic/buzzebeeslib/R$idPoints;->imgCash1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$66(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/widget/ImageView;)V

    .line 3977
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    sget v2, Lic/buzzebeeslib/R$idPoints;->imgCash2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$67(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/widget/ImageView;)V

    .line 3978
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    sget v2, Lic/buzzebeeslib/R$idPoints;->imgCash3:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$68(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/widget/ImageView;)V

    .line 3979
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    sget v2, Lic/buzzebeeslib/R$idPoints;->imgCash4:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$69(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/widget/ImageView;)V

    .line 3980
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    sget v2, Lic/buzzebeeslib/R$idPoints;->imgComma1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$70(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/widget/ImageView;)V

    .line 3982
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutPoints:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$64(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 3985
    iget v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$27;->val$points:I

    const-string v3, ""

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$14(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$27;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    invoke-static {v2, v3, v4, v5}, Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V

    .line 3986
    return-void
.end method
