.class Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$11;
.super Ljava/lang/Object;
.source "MarketReviewOfReviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->playBadge(Lic/buzzebeeslib/bean/BadgeAlert;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

.field private final synthetic val$badgeAlert:Lic/buzzebeeslib/bean/BadgeAlert;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Lic/buzzebeeslib/bean/BadgeAlert;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$11;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$11;->val$badgeAlert:Lic/buzzebeeslib/bean/BadgeAlert;

    .line 1978
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x4

    .line 1981
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$11;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    sget v4, Lic/buzzebeeslib/R$id;->layoutBadgeAlert:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 1982
    .local v1, "layoutBadgeAlert":Landroid/widget/RelativeLayout;
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$11;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$39(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/ImageView;

    move-result-object v3

    if-nez v3, :cond_8d

    .line 1983
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$11;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1984
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lic/buzzebeeslib/R$layout;->bz_badge_alert:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1986
    .local v2, "viewBadgeAlert":Landroid/view/View;
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$11;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    sget v3, Lic/buzzebeeslib/R$idBadgeAlert;->layoutRoot:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-static {v4, v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$40(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Landroid/widget/LinearLayout;)V

    .line 1987
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$11;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    sget v3, Lic/buzzebeeslib/R$idBadgeAlert;->imgBadgeLarge:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {v4, v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$41(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Landroid/widget/ImageView;)V

    .line 1988
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$11;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    sget v3, Lic/buzzebeeslib/R$idBadgeAlert;->layoutNewbie:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-static {v4, v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$42(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Landroid/widget/RelativeLayout;)V

    .line 1990
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$11;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$39(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1992
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$11;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    sget v3, Lic/buzzebeeslib/R$idBadgeAlert;->tvBadgeName:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v4, v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$43(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Landroid/widget/TextView;)V

    .line 1993
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$11;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    sget v3, Lic/buzzebeeslib/R$idBadgeAlert;->tvBadgePoint:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v4, v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$44(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Landroid/widget/TextView;)V

    .line 1995
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$11;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    sget v3, Lic/buzzebeeslib/R$idBadgeAlert;->layoutBadgeName:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-static {v4, v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$45(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Landroid/widget/RelativeLayout;)V

    .line 1996
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$11;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$46(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1998
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$11;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gLayoutRoot:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$47(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2001
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "viewBadgeAlert":Landroid/view/View;
    :cond_8d
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$11;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$11;->val$badgeAlert:Lic/buzzebeeslib/bean/BadgeAlert;

    # invokes: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->PlayBadgeAnimation(Lic/buzzebeeslib/bean/BadgeAlert;)V
    invoke-static {v3, v4}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$48(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Lic/buzzebeeslib/bean/BadgeAlert;)V

    .line 2002
    return-void
.end method
