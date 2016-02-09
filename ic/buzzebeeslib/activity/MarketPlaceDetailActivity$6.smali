.class Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$6;
.super Ljava/lang/Object;
.source "MarketPlaceDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->setUI_Condition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$6;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    .line 1671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1674
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$6;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->isShowAllInfoBuyPoint:Z
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$35(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1676
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$6;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    invoke-static {v0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$36(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Z)V

    .line 1677
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$6;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgInfoBuyPoint41:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$37(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_icon_info_buy_point_down_2x:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1679
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$6;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint1:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$38(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1680
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$6;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint2:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$39(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1681
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$6;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint3:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$40(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1682
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$6;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint4:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$41(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1684
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$6;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline1:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$42(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1685
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$6;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline2:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$43(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1686
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$6;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline3:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$44(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1687
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$6;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline4:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$45(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1704
    :goto_63
    return-void

    .line 1691
    :cond_64
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$6;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$36(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Z)V

    .line 1692
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$6;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgInfoBuyPoint41:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$37(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_icon_info_buy_point_up_2x:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1694
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$6;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint1:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$38(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1695
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$6;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint2:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$39(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1696
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$6;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint3:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$40(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1697
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$6;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint4:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$41(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1699
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$6;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline1:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$42(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1700
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$6;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline2:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$43(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1701
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$6;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline3:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$44(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1702
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$6;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline4:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$45(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_63
.end method
