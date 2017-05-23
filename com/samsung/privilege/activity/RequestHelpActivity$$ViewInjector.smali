.class public Lcom/samsung/privilege/activity/RequestHelpActivity$$ViewInjector;
.super Lcom/bzbs/marketplace/base/BaseAppCompatActivity$$ViewInjector;
.source "RequestHelpActivity$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/privilege/activity/RequestHelpActivity;",
        ">",
        "Lcom/bzbs/marketplace/base/BaseAppCompatActivity$$ViewInjector",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$$ViewInjector;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/base/BaseAppCompatActivity;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 7
    check-cast p2, Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/privilege/activity/RequestHelpActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/samsung/privilege/activity/RequestHelpActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/samsung/privilege/activity/RequestHelpActivity;Ljava/lang/Object;)V
    .registers 9
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
    const v4, 0x7f100536

    const v3, 0x7f1001e4

    const v2, 0x7f1001e3

    .line 9
    invoke-super {p0, p1, p2, p3}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/base/BaseAppCompatActivity;Ljava/lang/Object;)V

    .line 12
    const-string/jumbo v0, "field \'contentCode\'"

    invoke-virtual {p1, p3, v2, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 13
    const-string/jumbo v1, "field \'contentCode\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/samsung/privilege/activity/RequestHelpActivity;->contentCode:Landroid/widget/LinearLayout;

    .line 14
    const-string/jumbo v0, "field \'tvCode\'"

    invoke-virtual {p1, p3, v3, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 15
    const-string/jumbo v1, "field \'tvCode\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/samsung/privilege/activity/RequestHelpActivity;->tvCode:Landroid/widget/TextView;

    .line 16
    const-string/jumbo v0, "field \'layoutMyPointRoot\'"

    invoke-virtual {p1, p3, v4, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 17
    const-string/jumbo v1, "field \'layoutMyPointRoot\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/samsung/privilege/activity/RequestHelpActivity;->layoutMyPointRoot:Landroid/widget/LinearLayout;

    .line 18
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 7
    check-cast p2, Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/privilege/activity/RequestHelpActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/samsung/privilege/activity/RequestHelpActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic reset(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)V
    .registers 2

    .prologue
    .line 7
    check-cast p1, Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-virtual {p0, p1}, Lcom/samsung/privilege/activity/RequestHelpActivity$$ViewInjector;->reset(Lcom/samsung/privilege/activity/RequestHelpActivity;)V

    return-void
.end method

.method public reset(Lcom/samsung/privilege/activity/RequestHelpActivity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-super {p0, p1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$$ViewInjector;->reset(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)V

    .line 23
    iput-object v0, p1, Lcom/samsung/privilege/activity/RequestHelpActivity;->contentCode:Landroid/widget/LinearLayout;

    .line 24
    iput-object v0, p1, Lcom/samsung/privilege/activity/RequestHelpActivity;->tvCode:Landroid/widget/TextView;

    .line 25
    iput-object v0, p1, Lcom/samsung/privilege/activity/RequestHelpActivity;->layoutMyPointRoot:Landroid/widget/LinearLayout;

    .line 26
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 7
    check-cast p1, Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-virtual {p0, p1}, Lcom/samsung/privilege/activity/RequestHelpActivity$$ViewInjector;->reset(Lcom/samsung/privilege/activity/RequestHelpActivity;)V

    return-void
.end method
