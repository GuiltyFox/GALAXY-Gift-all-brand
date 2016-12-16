.class public Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder$$ViewInjector;
.super Ljava/lang/Object;
.source "ReviewGiftBlurDialog$ViewHolder$$ViewInjector.java"

# interfaces
.implements Lbutterknife/ButterKnife$Injector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;",
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
.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;Ljava/lang/Object;)V
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
    const v6, 0x7f100602

    const v5, 0x7f100304

    const v2, 0x7f1002b8

    const v4, 0x7f100295

    const v3, 0x7f1001ef

    .line 11
    const-string/jumbo v0, "field \'imgClose\'"

    invoke-virtual {p1, p3, v2, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    const-string/jumbo v1, "field \'imgClose\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->imgClose:Landroid/widget/ImageView;

    .line 13
    const-string/jumbo v0, "field \'tvName\'"

    invoke-virtual {p1, p3, v5, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 14
    const-string/jumbo v1, "field \'tvName\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 15
    const v0, 0x7f100608

    const-string/jumbo v1, "field \'tvTopic\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 16
    const v1, 0x7f100608

    const-string/jumbo v2, "field \'tvTopic\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->tvTopic:Landroid/widget/TextView;

    .line 17
    const-string/jumbo v0, "field \'tvRatingHeader\'"

    invoke-virtual {p1, p3, v6, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 18
    const-string/jumbo v1, "field \'tvRatingHeader\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->tvRatingHeader:Landroid/widget/TextView;

    .line 19
    const v0, 0x7f100609

    const-string/jumbo v1, "field \'contentLessRate\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 20
    const v1, 0x7f100609

    const-string/jumbo v2, "field \'contentLessRate\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->contentLessRate:Landroid/widget/LinearLayout;

    .line 21
    const-string/jumbo v0, "field \'btnOK\'"

    invoke-virtual {p1, p3, v3, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 22
    const-string/jumbo v1, "field \'btnOK\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->btnOK:Landroid/widget/Button;

    .line 23
    const v0, 0x7f10060a

    const-string/jumbo v1, "field \'etComment\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 24
    const v1, 0x7f10060a

    const-string/jumbo v2, "field \'etComment\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->etComment:Landroid/widget/EditText;

    .line 25
    const v0, 0x7f10060b

    const-string/jumbo v1, "field \'contentHighRate\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 26
    const v1, 0x7f10060b

    const-string/jumbo v2, "field \'contentHighRate\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->contentHighRate:Landroid/widget/LinearLayout;

    .line 27
    const-string/jumbo v0, "field \'layoutRoot\'"

    invoke-virtual {p1, p3, v4, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 28
    const-string/jumbo v1, "field \'layoutRoot\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->layoutRoot:Landroid/widget/LinearLayout;

    .line 29
    const v0, 0x7f100603

    const-string/jumbo v1, "field \'imgRating1\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 30
    const v1, 0x7f100603

    const-string/jumbo v2, "field \'imgRating1\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->imgRating1:Landroid/widget/ImageView;

    .line 31
    const v0, 0x7f100604

    const-string/jumbo v1, "field \'imgRating2\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 32
    const v1, 0x7f100604

    const-string/jumbo v2, "field \'imgRating2\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->imgRating2:Landroid/widget/ImageView;

    .line 33
    const v0, 0x7f100605

    const-string/jumbo v1, "field \'imgRating3\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 34
    const v1, 0x7f100605

    const-string/jumbo v2, "field \'imgRating3\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->imgRating3:Landroid/widget/ImageView;

    .line 35
    const v0, 0x7f100606

    const-string/jumbo v1, "field \'imgRating4\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 36
    const v1, 0x7f100606

    const-string/jumbo v2, "field \'imgRating4\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->imgRating4:Landroid/widget/ImageView;

    .line 37
    const v0, 0x7f100607

    const-string/jumbo v1, "field \'imgRating5\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 38
    const v1, 0x7f100607

    const-string/jumbo v2, "field \'imgRating5\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->imgRating5:Landroid/widget/ImageView;

    .line 39
    const v0, 0x7f1006b1

    const-string/jumbo v1, "field \'progressGoogle\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 40
    const v1, 0x7f1006b1

    const-string/jumbo v2, "field \'progressGoogle\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->progressGoogle:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    .line 41
    const v0, 0x7f10060c

    const-string/jumbo v1, "field \'radioGroup\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 42
    const v1, 0x7f10060c

    const-string/jumbo v2, "field \'radioGroup\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p2, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->radioGroup:Landroid/widget/RadioGroup;

    .line 43
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 8
    check-cast p2, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public reset(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 46
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->imgClose:Landroid/widget/ImageView;

    .line 47
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 48
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->tvTopic:Landroid/widget/TextView;

    .line 49
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->tvRatingHeader:Landroid/widget/TextView;

    .line 50
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->contentLessRate:Landroid/widget/LinearLayout;

    .line 51
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->btnOK:Landroid/widget/Button;

    .line 52
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->etComment:Landroid/widget/EditText;

    .line 53
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->contentHighRate:Landroid/widget/LinearLayout;

    .line 54
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->layoutRoot:Landroid/widget/LinearLayout;

    .line 55
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->imgRating1:Landroid/widget/ImageView;

    .line 56
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->imgRating2:Landroid/widget/ImageView;

    .line 57
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->imgRating3:Landroid/widget/ImageView;

    .line 58
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->imgRating4:Landroid/widget/ImageView;

    .line 59
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->imgRating5:Landroid/widget/ImageView;

    .line 60
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->progressGoogle:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    .line 61
    iput-object v0, p1, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->radioGroup:Landroid/widget/RadioGroup;

    .line 62
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 8
    check-cast p1, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder$$ViewInjector;->reset(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;)V

    return-void
.end method
