.class public Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview$$ViewInjector;
.super Ljava/lang/Object;
.source "RequestHelpAdapter$ViewHolderReview$$ViewInjector.java"

# interfaces
.implements Lbutterknife/ButterKnife$Injector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;",
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
.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;Ljava/lang/Object;)V
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
    const v6, 0x7f1004c0

    const v5, 0x7f1004bb

    const v4, 0x7f100474

    const v3, 0x7f100473

    const v2, 0x7f1001c4

    .line 11
    const-string/jumbo v0, "field \'imageProfile\'"

    invoke-virtual {p1, p3, v2, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    const-string/jumbo v1, "field \'imageProfile\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->imageProfile:Landroid/widget/ImageView;

    .line 13
    const-string/jumbo v0, "field \'textDisplay\'"

    invoke-virtual {p1, p3, v6, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 14
    const-string/jumbo v1, "field \'textDisplay\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->textDisplay:Landroid/widget/TextView;

    .line 15
    const v0, 0x7f1004c3

    const-string/jumbo v1, "field \'textPost\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 16
    const v1, 0x7f1004c3

    const-string/jumbo v2, "field \'textPost\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->textPost:Landroid/widget/TextView;

    .line 17
    const v0, 0x7f1004c2

    const-string/jumbo v1, "field \'textCreateTime\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 18
    const v1, 0x7f1004c2

    const-string/jumbo v2, "field \'textCreateTime\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->textCreateTime:Landroid/widget/TextView;

    .line 19
    const v0, 0x7f1004c1

    const-string/jumbo v1, "field \'textCreateDate\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 20
    const v1, 0x7f1004c1

    const-string/jumbo v2, "field \'textCreateDate\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->textCreateDate:Landroid/widget/TextView;

    .line 21
    const-string/jumbo v0, "field \'imagePost\'"

    invoke-virtual {p1, p3, v5, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 22
    const-string/jumbo v1, "field \'imagePost\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    .line 23
    const-string/jumbo v0, "field \'textViewComment\'"

    invoke-virtual {p1, p3, v4, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 24
    const-string/jumbo v1, "field \'textViewComment\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->textViewComment:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f1004c5

    const-string/jumbo v1, "field \'imageHeader\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 26
    const v1, 0x7f1004c5

    const-string/jumbo v2, "field \'imageHeader\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->imageHeader:Landroid/widget/ImageView;

    .line 27
    const-string/jumbo v0, "field \'layoutComment\'"

    invoke-virtual {p1, p3, v3, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 28
    const-string/jumbo v1, "field \'layoutComment\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->layoutComment:Landroid/widget/LinearLayout;

    .line 29
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 8
    check-cast p2, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;Ljava/lang/Object;)V

    return-void
.end method

.method public reset(Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 32
    iput-object v0, p1, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->imageProfile:Landroid/widget/ImageView;

    .line 33
    iput-object v0, p1, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->textDisplay:Landroid/widget/TextView;

    .line 34
    iput-object v0, p1, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->textPost:Landroid/widget/TextView;

    .line 35
    iput-object v0, p1, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->textCreateTime:Landroid/widget/TextView;

    .line 36
    iput-object v0, p1, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->textCreateDate:Landroid/widget/TextView;

    .line 37
    iput-object v0, p1, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    .line 38
    iput-object v0, p1, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->textViewComment:Landroid/widget/TextView;

    .line 39
    iput-object v0, p1, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->imageHeader:Landroid/widget/ImageView;

    .line 40
    iput-object v0, p1, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->layoutComment:Landroid/widget/LinearLayout;

    .line 41
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 8
    check-cast p1, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;

    invoke-virtual {p0, p1}, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview$$ViewInjector;->reset(Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;)V

    return-void
.end method
