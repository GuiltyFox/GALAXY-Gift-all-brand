.class Lic/buzzebeeslib/fragment/PlaceMainFragment$1;
.super Ljava/lang/Object;
.source "PlaceMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/PlaceMainFragment;->playPoint(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

.field private final synthetic val$points:I


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/PlaceMainFragment;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$1;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    iput p2, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$1;->val$points:I

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 233
    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$1;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->layoutPoints:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$2(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 234
    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$1;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->layoutPoints:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$2(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 236
    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$1;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 237
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lic/buzzebeeslib/R$layout;->bz_point_alert:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 238
    .local v1, "viewPoints":Landroid/view/View;
    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$1;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    sget v2, Lic/buzzebeeslib/R$idPoints;->layoutRootAnimation:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-static {v3, v2}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$3(Lic/buzzebeeslib/fragment/PlaceMainFragment;Landroid/widget/RelativeLayout;)V

    .line 239
    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$1;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    sget v2, Lic/buzzebeeslib/R$idPoints;->imgCash1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$4(Lic/buzzebeeslib/fragment/PlaceMainFragment;Landroid/widget/ImageView;)V

    .line 240
    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$1;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    sget v2, Lic/buzzebeeslib/R$idPoints;->imgCash2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$5(Lic/buzzebeeslib/fragment/PlaceMainFragment;Landroid/widget/ImageView;)V

    .line 241
    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$1;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    sget v2, Lic/buzzebeeslib/R$idPoints;->imgCash3:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$6(Lic/buzzebeeslib/fragment/PlaceMainFragment;Landroid/widget/ImageView;)V

    .line 242
    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$1;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    sget v2, Lic/buzzebeeslib/R$idPoints;->imgCash4:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$7(Lic/buzzebeeslib/fragment/PlaceMainFragment;Landroid/widget/ImageView;)V

    .line 243
    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$1;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    sget v2, Lic/buzzebeeslib/R$idPoints;->imgComma1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$8(Lic/buzzebeeslib/fragment/PlaceMainFragment;Landroid/widget/ImageView;)V

    .line 245
    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$1;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->layoutPoints:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$2(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 248
    iget v2, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$1;->val$points:I

    const-string v3, ""

    iget-object v4, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$1;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->gHandler:Landroid/os/Handler;
    invoke-static {v4}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$0(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$1;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    invoke-virtual {v5}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V

    .line 250
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "viewPoints":Landroid/view/View;
    :cond_90
    return-void
.end method
