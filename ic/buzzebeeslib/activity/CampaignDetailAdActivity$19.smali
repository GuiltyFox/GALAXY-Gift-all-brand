.class Lic/buzzebeeslib/activity/CampaignDetailAdActivity$19;
.super Ljava/lang/Object;
.source "CampaignDetailAdActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->playBadge(Lic/buzzebeeslib/bean/BadgeAlert;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

.field private final synthetic val$badgeAlert:Lic/buzzebeeslib/bean/BadgeAlert;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Lic/buzzebeeslib/bean/BadgeAlert;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$19;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    iput-object p2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$19;->val$badgeAlert:Lic/buzzebeeslib/bean/BadgeAlert;

    .line 1620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x4

    .line 1622
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$19;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v4, Lic/buzzebeeslib/R$idCampaignDetailAd;->layoutBadgeAlert:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 1623
    .local v1, "layoutBadgeAlert":Landroid/widget/RelativeLayout;
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$19;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v3}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$36(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/ImageView;

    move-result-object v3

    if-nez v3, :cond_ab

    .line 1624
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$19;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1625
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lic/buzzebeeslib/R$layout;->bz_badge_alert:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1627
    .local v2, "viewBadgeAlert":Landroid/view/View;
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$19;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v3, Lic/buzzebeeslib/R$idBadgeAlert;->layoutRoot:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-static {v4, v3}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$37(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Landroid/widget/LinearLayout;)V

    .line 1628
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$19;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v3, Lic/buzzebeeslib/R$idBadgeAlert;->imgBadgeLarge:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {v4, v3}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$38(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Landroid/widget/ImageView;)V

    .line 1629
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$19;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v3, Lic/buzzebeeslib/R$idBadgeAlert;->layoutNewbie:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-static {v4, v3}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$39(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Landroid/widget/RelativeLayout;)V

    .line 1631
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$19;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v3}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$36(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1633
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$19;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v3, Lic/buzzebeeslib/R$idBadgeAlert;->tvBadgeName:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v4, v3}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$40(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Landroid/widget/TextView;)V

    .line 1634
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$19;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v3, Lic/buzzebeeslib/R$idBadgeAlert;->tvBadgePoint:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v4, v3}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$41(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Landroid/widget/TextView;)V

    .line 1640
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$19;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gTvBadge:Landroid/widget/TextView;
    invoke-static {v3}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$42(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$19;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1641
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$19;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gTvBadgePoint:Landroid/widget/TextView;
    invoke-static {v3}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$43(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$19;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1643
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$19;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v3, Lic/buzzebeeslib/R$idBadgeAlert;->layoutBadgeName:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-static {v4, v3}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$44(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Landroid/widget/RelativeLayout;)V

    .line 1644
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$19;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$45(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1646
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$19;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gLayoutRoot:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$46(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1649
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "viewBadgeAlert":Landroid/view/View;
    :cond_ab
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$19;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$19;->val$badgeAlert:Lic/buzzebeeslib/bean/BadgeAlert;

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->PlayBadgeAnimation(Lic/buzzebeeslib/bean/BadgeAlert;)V
    invoke-static {v3, v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$47(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Lic/buzzebeeslib/bean/BadgeAlert;)V

    .line 1650
    return-void
.end method
