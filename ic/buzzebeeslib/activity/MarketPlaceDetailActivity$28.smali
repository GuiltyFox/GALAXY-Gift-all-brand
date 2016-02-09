.class Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$28;
.super Ljava/lang/Object;
.source "MarketPlaceDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->playBadge(Lic/buzzebeeslib/bean/BadgeAlert;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

.field private final synthetic val$badgeAlert:Lic/buzzebeeslib/bean/BadgeAlert;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Lic/buzzebeeslib/bean/BadgeAlert;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$28;->val$badgeAlert:Lic/buzzebeeslib/bean/BadgeAlert;

    .line 4009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x4

    .line 4011
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    sget v4, Lic/buzzebeeslib/R$id;->layoutBadgeAlert:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 4012
    .local v1, "layoutBadgeAlert":Landroid/widget/RelativeLayout;
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$71(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/ImageView;

    move-result-object v3

    if-nez v3, :cond_8d

    .line 4013
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 4014
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lic/buzzebeeslib/R$layout;->bz_badge_alert:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 4016
    .local v2, "viewBadgeAlert":Landroid/view/View;
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    sget v3, Lic/buzzebeeslib/R$idBadgeAlert;->layoutRoot:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-static {v4, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$72(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/widget/LinearLayout;)V

    .line 4017
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    sget v3, Lic/buzzebeeslib/R$idBadgeAlert;->imgBadgeLarge:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {v4, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$73(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/widget/ImageView;)V

    .line 4018
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    sget v3, Lic/buzzebeeslib/R$idBadgeAlert;->layoutNewbie:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-static {v4, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$74(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/widget/RelativeLayout;)V

    .line 4020
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$71(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4022
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    sget v3, Lic/buzzebeeslib/R$idBadgeAlert;->tvBadgeName:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v4, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$75(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/widget/TextView;)V

    .line 4023
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    sget v3, Lic/buzzebeeslib/R$idBadgeAlert;->tvBadgePoint:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v4, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$76(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/widget/TextView;)V

    .line 4025
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    sget v3, Lic/buzzebeeslib/R$idBadgeAlert;->layoutBadgeName:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-static {v4, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$77(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/widget/RelativeLayout;)V

    .line 4026
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$78(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4028
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutRoot:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$79(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 4031
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "viewBadgeAlert":Landroid/view/View;
    :cond_8d
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$28;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$28;->val$badgeAlert:Lic/buzzebeeslib/bean/BadgeAlert;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->PlayBadgeAnimation(Lic/buzzebeeslib/bean/BadgeAlert;)V
    invoke-static {v3, v4}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$80(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Lic/buzzebeeslib/bean/BadgeAlert;)V

    .line 4032
    return-void
.end method
