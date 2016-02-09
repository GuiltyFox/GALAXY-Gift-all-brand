.class Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$10;
.super Ljava/lang/Object;
.source "MarketPlaceMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->playBadge(Lic/buzzebeeslib/bean/BadgeAlert;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

.field private final synthetic val$badgeAlert:Lic/buzzebeeslib/bean/BadgeAlert;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Lic/buzzebeeslib/bean/BadgeAlert;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$10;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    iput-object p2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$10;->val$badgeAlert:Lic/buzzebeeslib/bean/BadgeAlert;

    .line 996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    .line 998
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$10;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutBadgeAlert:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$30(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    if-eqz v2, :cond_9c

    .line 999
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$10;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$31(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/widget/ImageView;

    move-result-object v2

    if-nez v2, :cond_95

    .line 1000
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$10;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1001
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lic/buzzebeeslib/R$layout;->bz_badge_alert:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1003
    .local v1, "viewBadgeAlert":Landroid/view/View;
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$10;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    sget v2, Lic/buzzebeeslib/R$idBadgeAlert;->layoutRoot:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-static {v3, v2}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$32(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Landroid/widget/LinearLayout;)V

    .line 1004
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$10;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    sget v2, Lic/buzzebeeslib/R$idBadgeAlert;->imgBadgeLarge:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$33(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Landroid/widget/ImageView;)V

    .line 1005
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$10;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    sget v2, Lic/buzzebeeslib/R$idBadgeAlert;->layoutNewbie:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-static {v3, v2}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$34(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Landroid/widget/RelativeLayout;)V

    .line 1007
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$10;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$31(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1009
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$10;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    sget v2, Lic/buzzebeeslib/R$idBadgeAlert;->tvBadgeName:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$35(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Landroid/widget/TextView;)V

    .line 1010
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$10;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    sget v2, Lic/buzzebeeslib/R$idBadgeAlert;->tvBadgePoint:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v3, v2}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$36(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Landroid/widget/TextView;)V

    .line 1012
    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$10;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    sget v2, Lic/buzzebeeslib/R$idBadgeAlert;->layoutBadgeName:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-static {v3, v2}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$37(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Landroid/widget/RelativeLayout;)V

    .line 1013
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$10;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$38(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1015
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$10;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutBadgeAlert:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$30(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$10;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutRoot:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$39(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1018
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "viewBadgeAlert":Landroid/view/View;
    :cond_95
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$10;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$10;->val$badgeAlert:Lic/buzzebeeslib/bean/BadgeAlert;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->PlayBadgeAnimation(Lic/buzzebeeslib/bean/BadgeAlert;)V
    invoke-static {v2, v3}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$40(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Lic/buzzebeeslib/bean/BadgeAlert;)V

    .line 1020
    :cond_9c
    return-void
.end method
