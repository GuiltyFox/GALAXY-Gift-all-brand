.class public Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder$$ViewInjector;
.super Ljava/lang/Object;
.source "ConditionDealGetBlurDialog$ViewHolder$$ViewInjector.java"

# interfaces
.implements Lbutterknife/ButterKnife$Injector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/ButterKnife$Injector",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;Ljava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbutterknife/ButterKnife$Finder;",
            "TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    const v6, 0x7f100255

    const v5, 0x7f100253

    const v4, 0x7f10024a

    const v2, 0x7f100247

    const v3, 0x7f1001ef

    .line 11
    const-string/jumbo v0, "field \'imgCampaign\'"

    invoke-virtual {p1, p3, v2, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    const-string/jumbo v1, "field \'imgCampaign\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;->imgCampaign:Landroid/widget/ImageView;

    .line 13
    const-string/jumbo v0, "field \'tvCampaignDesc\'"

    invoke-virtual {p1, p3, v6, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 14
    const-string/jumbo v1, "field \'tvCampaignDesc\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;->tvCampaignDesc:Landroid/widget/TextView;

    .line 15
    const v0, 0x7f100256

    const-string/jumbo v1, "field \'tvShowTimeRedeem\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 16
    const v1, 0x7f100256

    const-string/jumbo v2, "field \'tvShowTimeRedeem\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;->tvShowTimeRedeem:Landroid/widget/TextView;

    .line 17
    const v0, 0x7f100382

    const-string/jumbo v1, "field \'tvCondition1\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 18
    const v1, 0x7f100382

    const-string/jumbo v2, "field \'tvCondition1\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;->tvCondition1:Landroid/widget/TextView;

    .line 19
    const v0, 0x7f100383

    const-string/jumbo v1, "field \'tvCondition2\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 20
    const v1, 0x7f100383

    const-string/jumbo v2, "field \'tvCondition2\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;->tvCondition2:Landroid/widget/TextView;

    .line 21
    const v0, 0x7f100384

    const-string/jumbo v1, "field \'tvCondition3\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 22
    const v1, 0x7f100384

    const-string/jumbo v2, "field \'tvCondition3\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;->tvCondition3:Landroid/widget/TextView;

    .line 23
    const-string/jumbo v0, "field \'svCondition\'"

    invoke-virtual {p1, p3, v4, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 24
    const-string/jumbo v1, "field \'svCondition\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;->svCondition:Landroid/widget/ScrollView;

    .line 25
    const-string/jumbo v0, "field \'btnOK\'"

    invoke-virtual {p1, p3, v3, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 26
    const-string/jumbo v1, "field \'btnOK\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;->btnOK:Landroid/widget/Button;

    .line 27
    const v0, 0x7f100260

    const-string/jumbo v1, "field \'btnClose\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 28
    const v1, 0x7f100260

    const-string/jumbo v2, "field \'btnClose\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;->btnClose:Landroid/widget/Button;

    .line 29
    const v0, 0x7f10025e

    const-string/jumbo v1, "field \'LayoutMainComman\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 30
    const v1, 0x7f10025e

    const-string/jumbo v2, "field \'LayoutMainComman\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;->LayoutMainComman:Landroid/widget/LinearLayout;

    .line 31
    const-string/jumbo v0, "field \'layoutRoot\'"

    invoke-virtual {p1, p3, v5, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 32
    const-string/jumbo v1, "field \'layoutRoot\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;->layoutRoot:Landroid/widget/LinearLayout;

    .line 33
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 8
    check-cast p2, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public reset(Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 36
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;->imgCampaign:Landroid/widget/ImageView;

    .line 37
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;->tvCampaignDesc:Landroid/widget/TextView;

    .line 38
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;->tvShowTimeRedeem:Landroid/widget/TextView;

    .line 39
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;->tvCondition1:Landroid/widget/TextView;

    .line 40
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;->tvCondition2:Landroid/widget/TextView;

    .line 41
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;->tvCondition3:Landroid/widget/TextView;

    .line 42
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;->svCondition:Landroid/widget/ScrollView;

    .line 43
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;->btnOK:Landroid/widget/Button;

    .line 44
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;->btnClose:Landroid/widget/Button;

    .line 45
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;->LayoutMainComman:Landroid/widget/LinearLayout;

    .line 46
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;->layoutRoot:Landroid/widget/LinearLayout;

    .line 47
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 8
    check-cast p1, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder$$ViewInjector;->reset(Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;)V

    return-void
.end method
