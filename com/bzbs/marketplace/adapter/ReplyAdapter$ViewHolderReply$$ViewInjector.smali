.class public Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply$$ViewInjector;
.super Ljava/lang/Object;
.source "ReplyAdapter$ViewHolderReply$$ViewInjector.java"

# interfaces
.implements Lbutterknife/ButterKnife$Injector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;",
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
.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;Ljava/lang/Object;)V
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
    const v6, 0x7f100670

    const v5, 0x7f10066d

    const v4, 0x7f100631

    const v3, 0x7f10062f

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

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->imageProfile:Landroid/widget/ImageView;

    .line 13
    const v0, 0x7f100671

    const-string/jumbo v1, "field \'textDisplay\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 14
    const v1, 0x7f100671

    const-string/jumbo v2, "field \'textDisplay\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->textDisplay:Landroid/widget/TextView;

    .line 15
    const v0, 0x7f100674

    const-string/jumbo v1, "field \'textPost\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 16
    const v1, 0x7f100674

    const-string/jumbo v2, "field \'textPost\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->textPost:Landroid/widget/TextView;

    .line 17
    const v0, 0x7f100673

    const-string/jumbo v1, "field \'textCreateTime\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 18
    const v1, 0x7f100673

    const-string/jumbo v2, "field \'textCreateTime\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->textCreateTime:Landroid/widget/TextView;

    .line 19
    const v0, 0x7f100672

    const-string/jumbo v1, "field \'textCreateDate\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 20
    const v1, 0x7f100672

    const-string/jumbo v2, "field \'textCreateDate\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->textCreateDate:Landroid/widget/TextView;

    .line 21
    const-string/jumbo v0, "field \'textViewLike\'"

    invoke-virtual {p1, p3, v4, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 22
    const-string/jumbo v1, "field \'textViewLike\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->textViewLike:Landroid/widget/TextView;

    .line 23
    const v0, 0x7f100676

    const-string/jumbo v1, "field \'imageHeader\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 24
    const v1, 0x7f100676

    const-string/jumbo v2, "field \'imageHeader\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->imageHeader:Landroid/widget/ImageView;

    .line 25
    const-string/jumbo v0, "field \'layoutLike\'"

    invoke-virtual {p1, p3, v3, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 26
    const-string/jumbo v1, "field \'layoutLike\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->layoutLike:Landroid/widget/LinearLayout;

    .line 27
    const-string/jumbo v0, "field \'contentView\'"

    invoke-virtual {p1, p3, v6, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 28
    const-string/jumbo v1, "field \'contentView\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->contentView:Landroid/widget/LinearLayout;

    .line 29
    const v0, 0x7f100675

    const-string/jumbo v1, "field \'btnLike\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 30
    const v1, 0x7f100675

    const-string/jumbo v2, "field \'btnLike\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->btnLike:Landroid/widget/ImageView;

    .line 31
    const-string/jumbo v0, "field \'imagePost\'"

    invoke-virtual {p1, p3, v5, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 32
    const-string/jumbo v1, "field \'imagePost\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->imagePost:Landroid/widget/ImageView;

    .line 33
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 8
    check-cast p2, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;Ljava/lang/Object;)V

    return-void
.end method

.method public reset(Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 36
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->imageProfile:Landroid/widget/ImageView;

    .line 37
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->textDisplay:Landroid/widget/TextView;

    .line 38
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->textPost:Landroid/widget/TextView;

    .line 39
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->textCreateTime:Landroid/widget/TextView;

    .line 40
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->textCreateDate:Landroid/widget/TextView;

    .line 41
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->textViewLike:Landroid/widget/TextView;

    .line 42
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->imageHeader:Landroid/widget/ImageView;

    .line 43
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->layoutLike:Landroid/widget/LinearLayout;

    .line 44
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->contentView:Landroid/widget/LinearLayout;

    .line 45
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->btnLike:Landroid/widget/ImageView;

    .line 46
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->imagePost:Landroid/widget/ImageView;

    .line 47
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 8
    check-cast p1, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;

    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply$$ViewInjector;->reset(Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;)V

    return-void
.end method
