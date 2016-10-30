.class public Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$ViewHolder$$ViewInjector;
.super Ljava/lang/Object;
.source "SentByPostBlurDialog$ViewHolder$$ViewInjector.java"

# interfaces
.implements Lbutterknife/ButterKnife$Injector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$ViewHolder;",
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
.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$ViewHolder;Ljava/lang/Object;)V
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
    const v6, 0x7f10028a

    const v5, 0x7f100289

    const v4, 0x7f100288

    const v2, 0x7f100287

    const v3, 0x7f100285

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

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$ViewHolder;->imgCampaign:Landroid/widget/ImageView;

    .line 13
    const-string/jumbo v0, "field \'tvCampaignDesc\'"

    invoke-virtual {p1, p3, v4, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 14
    const-string/jumbo v1, "field \'tvCampaignDesc\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$ViewHolder;->tvCampaignDesc:Landroid/widget/TextView;

    .line 15
    const-string/jumbo v0, "field \'tvShowTimeRedeem\'"

    invoke-virtual {p1, p3, v5, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 16
    const-string/jumbo v1, "field \'tvShowTimeRedeem\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$ViewHolder;->tvShowTimeRedeem:Landroid/widget/TextView;

    .line 17
    const v0, 0x7f10029a

    const-string/jumbo v1, "field \'tvDraws1\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 18
    const v1, 0x7f10029a

    const-string/jumbo v2, "field \'tvDraws1\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$ViewHolder;->tvDraws1:Landroid/widget/TextView;

    .line 19
    const v0, 0x7f10029b

    const-string/jumbo v1, "field \'tvDraws2\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 20
    const v1, 0x7f10029b

    const-string/jumbo v2, "field \'tvDraws2\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$ViewHolder;->tvDraws2:Landroid/widget/TextView;

    .line 21
    const v0, 0x7f10029c

    const-string/jumbo v1, "field \'tvDraws3\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 22
    const v1, 0x7f10029c

    const-string/jumbo v2, "field \'tvDraws3\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$ViewHolder;->tvDraws3:Landroid/widget/TextView;

    .line 23
    const v0, 0x7f10029d

    const-string/jumbo v1, "field \'tvDraws4\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 24
    const v1, 0x7f10029d

    const-string/jumbo v2, "field \'tvDraws4\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$ViewHolder;->tvDraws4:Landroid/widget/TextView;

    .line 25
    const-string/jumbo v0, "field \'svCondition\'"

    invoke-virtual {p1, p3, v6, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 26
    const-string/jumbo v1, "field \'svCondition\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$ViewHolder;->svCondition:Landroid/widget/ScrollView;

    .line 27
    const v0, 0x7f100290

    const-string/jumbo v1, "field \'btnClose\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 28
    const v1, 0x7f100290

    const-string/jumbo v2, "field \'btnClose\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$ViewHolder;->btnClose:Landroid/widget/Button;

    .line 29
    const-string/jumbo v0, "field \'layoutRoot\'"

    invoke-virtual {p1, p3, v3, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 30
    const-string/jumbo v1, "field \'layoutRoot\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$ViewHolder;->layoutRoot:Landroid/widget/LinearLayout;

    .line 31
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 8
    check-cast p2, Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$ViewHolder$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$ViewHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public reset(Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$ViewHolder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 34
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$ViewHolder;->imgCampaign:Landroid/widget/ImageView;

    .line 35
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$ViewHolder;->tvCampaignDesc:Landroid/widget/TextView;

    .line 36
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$ViewHolder;->tvShowTimeRedeem:Landroid/widget/TextView;

    .line 37
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$ViewHolder;->tvDraws1:Landroid/widget/TextView;

    .line 38
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$ViewHolder;->tvDraws2:Landroid/widget/TextView;

    .line 39
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$ViewHolder;->tvDraws3:Landroid/widget/TextView;

    .line 40
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$ViewHolder;->tvDraws4:Landroid/widget/TextView;

    .line 41
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$ViewHolder;->svCondition:Landroid/widget/ScrollView;

    .line 42
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$ViewHolder;->btnClose:Landroid/widget/Button;

    .line 43
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$ViewHolder;->layoutRoot:Landroid/widget/LinearLayout;

    .line 44
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 8
    check-cast p1, Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$ViewHolder$$ViewInjector;->reset(Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$ViewHolder;)V

    return-void
.end method
