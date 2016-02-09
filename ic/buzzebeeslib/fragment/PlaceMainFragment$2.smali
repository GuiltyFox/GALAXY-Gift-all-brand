.class Lic/buzzebeeslib/fragment/PlaceMainFragment$2;
.super Ljava/lang/Object;
.source "PlaceMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/PlaceMainFragment;->playBadge(Lic/buzzebeeslib/bean/BadgeAlert;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

.field private final synthetic val$badgeAlert:Lic/buzzebeeslib/bean/BadgeAlert;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/PlaceMainFragment;Lic/buzzebeeslib/bean/BadgeAlert;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$2;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    iput-object p2, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$2;->val$badgeAlert:Lic/buzzebeeslib/bean/BadgeAlert;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    .line 274
    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$2;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->layoutBadgeAlert:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$9(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    if-eqz v2, :cond_9c

    .line 275
    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$2;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$10(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/widget/ImageView;

    move-result-object v2

    if-nez v2, :cond_95

    .line 276
    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$2;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 277
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lic/buzzebeeslib/R$layout;->bz_badge_alert:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 279
    .local v1, "viewBadgeAlert":Landroid/view/View;
    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$2;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    sget v2, Lic/buzzebeeslib/R$idBadgeAlert;->layoutRoot:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-static {v3, v2}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$11(Lic/buzzebeeslib/fragment/PlaceMainFragment;Landroid/widget/LinearLayout;)V

    .line 280
    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$2;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    sget v2, Lic/buzzebeeslib/R$idBadgeAlert;->imgBadgeLarge:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$12(Lic/buzzebeeslib/fragment/PlaceMainFragment;Landroid/widget/ImageView;)V

    .line 281
    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$2;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    sget v2, Lic/buzzebeeslib/R$idBadgeAlert;->layoutNewbie:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-static {v3, v2}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$13(Lic/buzzebeeslib/fragment/PlaceMainFragment;Landroid/widget/RelativeLayout;)V

    .line 283
    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$2;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$10(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$2;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    sget v2, Lic/buzzebeeslib/R$idBadgeAlert;->tvBadgeName:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$14(Lic/buzzebeeslib/fragment/PlaceMainFragment;Landroid/widget/TextView;)V

    .line 286
    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$2;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    sget v2, Lic/buzzebeeslib/R$idBadgeAlert;->tvBadgePoint:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$15(Lic/buzzebeeslib/fragment/PlaceMainFragment;Landroid/widget/TextView;)V

    .line 288
    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$2;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    sget v2, Lic/buzzebeeslib/R$idBadgeAlert;->layoutBadgeName:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-static {v3, v2}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$16(Lic/buzzebeeslib/fragment/PlaceMainFragment;Landroid/widget/RelativeLayout;)V

    .line 289
    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$2;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$17(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 291
    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$2;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->layoutBadgeAlert:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$9(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$2;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->gLayoutRoot:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$18(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 294
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "viewBadgeAlert":Landroid/view/View;
    :cond_95
    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$2;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$2;->val$badgeAlert:Lic/buzzebeeslib/bean/BadgeAlert;

    # invokes: Lic/buzzebeeslib/fragment/PlaceMainFragment;->PlayBadgeAnimation(Lic/buzzebeeslib/bean/BadgeAlert;)V
    invoke-static {v2, v3}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$19(Lic/buzzebeeslib/fragment/PlaceMainFragment;Lic/buzzebeeslib/bean/BadgeAlert;)V

    .line 296
    :cond_9c
    return-void
.end method
