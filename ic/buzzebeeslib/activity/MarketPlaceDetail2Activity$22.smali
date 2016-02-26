.class Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$22;
.super Ljava/lang/Object;
.source "MarketPlaceDetail2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->playBadge(Lic/buzzebeeslib/bean/BadgeAlert;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

.field private final synthetic val$badgeAlert:Lic/buzzebeeslib/bean/BadgeAlert;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Lic/buzzebeeslib/bean/BadgeAlert;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$22;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$22;->val$badgeAlert:Lic/buzzebeeslib/bean/BadgeAlert;

    .line 2889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x4

    .line 2891
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$22;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    sget v4, Lic/buzzebeeslib/R$id;->layoutBadgeAlert:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 2892
    .local v1, "layoutBadgeAlert":Landroid/widget/RelativeLayout;
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$22;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$49(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/ImageView;

    move-result-object v3

    if-nez v3, :cond_8d

    .line 2893
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$22;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2894
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lic/buzzebeeslib/R$layout;->bz_badge_alert:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2896
    .local v2, "viewBadgeAlert":Landroid/view/View;
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$22;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    sget v3, Lic/buzzebeeslib/R$idBadgeAlert;->layoutRoot:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-static {v4, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$50(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/widget/LinearLayout;)V

    .line 2897
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$22;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    sget v3, Lic/buzzebeeslib/R$idBadgeAlert;->imgBadgeLarge:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {v4, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$51(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/widget/ImageView;)V

    .line 2898
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$22;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    sget v3, Lic/buzzebeeslib/R$idBadgeAlert;->layoutNewbie:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-static {v4, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$52(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/widget/RelativeLayout;)V

    .line 2900
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$22;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$49(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2902
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$22;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    sget v3, Lic/buzzebeeslib/R$idBadgeAlert;->tvBadgeName:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v4, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$53(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/widget/TextView;)V

    .line 2903
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$22;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    sget v3, Lic/buzzebeeslib/R$idBadgeAlert;->tvBadgePoint:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v4, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$54(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/widget/TextView;)V

    .line 2905
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$22;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    sget v3, Lic/buzzebeeslib/R$idBadgeAlert;->layoutBadgeName:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-static {v4, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$55(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/widget/RelativeLayout;)V

    .line 2906
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$22;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$56(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2908
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$22;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutRoot:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$57(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2911
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "viewBadgeAlert":Landroid/view/View;
    :cond_8d
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$22;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$22;->val$badgeAlert:Lic/buzzebeeslib/bean/BadgeAlert;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->PlayBadgeAnimation(Lic/buzzebeeslib/bean/BadgeAlert;)V
    invoke-static {v3, v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$58(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Lic/buzzebeeslib/bean/BadgeAlert;)V

    .line 2912
    return-void
.end method
