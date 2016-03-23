.class public Lcom/bzbs/lib/survey/util/MarketBzBsPopup;
.super Ljava/lang/Object;
.source "MarketBzBsPopup.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContainer:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/MarketBzBsPopup;->mActivity:Landroid/app/Activity;

    .line 23
    const v2, 0x1020002

    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 24
    .local v0, "container":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/bzbs/lib/survey/R$layout;->market_bzbs_popup:I

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 25
    .local v1, "v":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/bzbs/lib/survey/util/MarketBzBsPopup;->init(Landroid/view/View;)V

    .line 26
    return-void
.end method

.method private init(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 29
    sget v0, Lcom/bzbs/lib/survey/R$id;->mbContainer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/MarketBzBsPopup;->mContainer:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/MarketBzBsPopup;->mContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/MarketBzBsPopup;->mHandler:Landroid/os/Handler;

    .line 33
    return-void
.end method


# virtual methods
.method public playPopupMarketBzbs()V
    .registers 13

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/MarketBzBsPopup;->mContainer:Landroid/view/View;

    sget v1, Lcom/bzbs/lib/survey/R$id;->layoutPopupWelcome:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 44
    .local v2, "layoutPopupWelcome":Landroid/widget/RelativeLayout;
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/MarketBzBsPopup;->mContainer:Landroid/view/View;

    sget v1, Lcom/bzbs/lib/survey/R$id;->imagePopupWelcome1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 45
    .local v3, "imagePopupWelcome1":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/MarketBzBsPopup;->mContainer:Landroid/view/View;

    sget v1, Lcom/bzbs/lib/survey/R$id;->imagePopupWelcome2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 46
    .local v4, "imagePopupWelcome2":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/MarketBzBsPopup;->mContainer:Landroid/view/View;

    sget v1, Lcom/bzbs/lib/survey/R$id;->layoutButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 47
    .local v5, "layoutButton":Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/MarketBzBsPopup;->mContainer:Landroid/view/View;

    sget v1, Lcom/bzbs/lib/survey/R$id;->layoutBack:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 48
    .local v6, "layoutBack":Landroid/widget/RelativeLayout;
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/MarketBzBsPopup;->mContainer:Landroid/view/View;

    sget v1, Lcom/bzbs/lib/survey/R$id;->layoutNext:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 49
    .local v7, "layoutNext":Landroid/widget/RelativeLayout;
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/MarketBzBsPopup;->mContainer:Landroid/view/View;

    sget v1, Lcom/bzbs/lib/survey/R$id;->imageBack:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 50
    .local v8, "imageBack":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/MarketBzBsPopup;->mContainer:Landroid/view/View;

    sget v1, Lcom/bzbs/lib/survey/R$id;->imageNext:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 51
    .local v9, "imageNext":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/MarketBzBsPopup;->mContainer:Landroid/view/View;

    sget v1, Lcom/bzbs/lib/survey/R$id;->tvBack:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 52
    .local v10, "tvBack":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/MarketBzBsPopup;->mContainer:Landroid/view/View;

    sget v1, Lcom/bzbs/lib/survey/R$id;->tvNext:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 54
    .local v11, "tvNext":Landroid/widget/TextView;
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/MarketBzBsPopup;->mActivity:Landroid/app/Activity;

    invoke-static/range {v0 .. v11}, Lcom/bzbs/lib/survey/util/AnimationPopup;->playPopupMarketBzbs(ILandroid/app/Activity;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 67
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/MarketBzBsPopup;->mContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/util/MarketBzBsPopup;->playPopupMarketBzbs()V

    .line 39
    return-void
.end method
