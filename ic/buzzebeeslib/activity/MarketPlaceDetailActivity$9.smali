.class Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$9;
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
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    .line 1831
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

    .line 1834
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->isShowAllInfoBuyPoint:Z
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$35(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1836
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    invoke-static {v0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$36(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Z)V

    .line 1837
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgInfoBuyPoint41:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$37(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_icon_info_buy_point_down_2x:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1839
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint1:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$38(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1840
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint2:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$39(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1841
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint3:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$40(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1842
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint4:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$41(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1844
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline1:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$42(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1845
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline2:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$43(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1846
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline3:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$44(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1847
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline4:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$45(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1863
    :goto_63
    return-void

    .line 1850
    :cond_64
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$36(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Z)V

    .line 1851
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgInfoBuyPoint41:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$37(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_icon_info_buy_point_up_2x:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1853
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint1:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$38(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1854
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint2:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$39(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1855
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint3:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$40(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1856
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint4:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$41(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1858
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline1:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$42(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1859
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline2:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$43(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1860
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline3:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$44(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1861
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$9;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline4:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$45(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_63
.end method
