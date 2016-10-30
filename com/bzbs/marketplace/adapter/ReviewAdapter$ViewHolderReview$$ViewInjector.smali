.class public Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$$ViewInjector;
.super Ljava/lang/Object;
.source "ReviewAdapter$ViewHolderReview$$ViewInjector.java"

# interfaces
.implements Lbutterknife/ButterKnife$Injector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;",
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
.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;Ljava/lang/Object;)V
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
    const v6, 0x7f1005e3

    const v5, 0x7f1005e2

    const v4, 0x7f1005e1

    const v3, 0x7f1005e0

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

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imageProfile:Landroid/widget/ImageView;

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

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->textDisplay:Landroid/widget/TextView;

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

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->textPost:Landroid/widget/TextView;

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

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->textCreateTime:Landroid/widget/TextView;

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

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->textCreateDate:Landroid/widget/TextView;

    .line 21
    const v0, 0x7f10066d

    const-string/jumbo v1, "field \'imagePost\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 22
    const v1, 0x7f10066d

    const-string/jumbo v2, "field \'imagePost\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    .line 23
    const v0, 0x7f10062f

    const-string/jumbo v1, "field \'layoutLike\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 24
    const v1, 0x7f10062f

    const-string/jumbo v2, "field \'layoutLike\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->layoutLike:Landroid/widget/LinearLayout;

    .line 25
    const v0, 0x7f100631

    const-string/jumbo v1, "field \'textViewLike\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 26
    const v1, 0x7f100631

    const-string/jumbo v2, "field \'textViewLike\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->textViewLike:Landroid/widget/TextView;

    .line 27
    const v0, 0x7f10062e

    const-string/jumbo v1, "field \'textViewComment\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 28
    const v1, 0x7f10062e

    const-string/jumbo v2, "field \'textViewComment\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->textViewComment:Landroid/widget/TextView;

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

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->btnLike:Landroid/widget/ImageView;

    .line 31
    const v0, 0x7f100676

    const-string/jumbo v1, "field \'imageHeader\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 32
    const v1, 0x7f100676

    const-string/jumbo v2, "field \'imageHeader\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imageHeader:Landroid/widget/ImageView;

    .line 33
    const v0, 0x7f10062d

    const-string/jumbo v1, "field \'layoutComment\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 34
    const v1, 0x7f10062d

    const-string/jumbo v2, "field \'layoutComment\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->layoutComment:Landroid/widget/LinearLayout;

    .line 35
    const v0, 0x7f100670

    const-string/jumbo v1, "field \'contentView\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 36
    const v1, 0x7f100670

    const-string/jumbo v2, "field \'contentView\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->contentView:Landroid/widget/LinearLayout;

    .line 37
    const-string/jumbo v0, "field \'imgRating1\'"

    invoke-virtual {p1, p3, v3, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 38
    const-string/jumbo v1, "field \'imgRating1\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imgRating1:Landroid/widget/ImageView;

    .line 39
    const-string/jumbo v0, "field \'imgRating2\'"

    invoke-virtual {p1, p3, v4, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 40
    const-string/jumbo v1, "field \'imgRating2\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imgRating2:Landroid/widget/ImageView;

    .line 41
    const-string/jumbo v0, "field \'imgRating3\'"

    invoke-virtual {p1, p3, v5, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 42
    const-string/jumbo v1, "field \'imgRating3\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imgRating3:Landroid/widget/ImageView;

    .line 43
    const-string/jumbo v0, "field \'imgRating4\'"

    invoke-virtual {p1, p3, v6, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 44
    const-string/jumbo v1, "field \'imgRating4\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imgRating4:Landroid/widget/ImageView;

    .line 45
    const v0, 0x7f1005e4

    const-string/jumbo v1, "field \'imgRating5\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 46
    const v1, 0x7f1005e4

    const-string/jumbo v2, "field \'imgRating5\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imgRating5:Landroid/widget/ImageView;

    .line 47
    const v0, 0x7f100682

    const-string/jumbo v1, "field \'contentRating\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 48
    const v1, 0x7f100682

    const-string/jumbo v2, "field \'contentRating\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->contentRating:Landroid/widget/LinearLayout;

    .line 49
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 8
    check-cast p2, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;Ljava/lang/Object;)V

    return-void
.end method

.method public reset(Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 52
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imageProfile:Landroid/widget/ImageView;

    .line 53
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->textDisplay:Landroid/widget/TextView;

    .line 54
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->textPost:Landroid/widget/TextView;

    .line 55
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->textCreateTime:Landroid/widget/TextView;

    .line 56
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->textCreateDate:Landroid/widget/TextView;

    .line 57
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    .line 58
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->layoutLike:Landroid/widget/LinearLayout;

    .line 59
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->textViewLike:Landroid/widget/TextView;

    .line 60
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->textViewComment:Landroid/widget/TextView;

    .line 61
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->btnLike:Landroid/widget/ImageView;

    .line 62
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imageHeader:Landroid/widget/ImageView;

    .line 63
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->layoutComment:Landroid/widget/LinearLayout;

    .line 64
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->contentView:Landroid/widget/LinearLayout;

    .line 65
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imgRating1:Landroid/widget/ImageView;

    .line 66
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imgRating2:Landroid/widget/ImageView;

    .line 67
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imgRating3:Landroid/widget/ImageView;

    .line 68
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imgRating4:Landroid/widget/ImageView;

    .line 69
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imgRating5:Landroid/widget/ImageView;

    .line 70
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->contentRating:Landroid/widget/LinearLayout;

    .line 71
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 8
    check-cast p1, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;

    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$$ViewInjector;->reset(Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;)V

    return-void
.end method
