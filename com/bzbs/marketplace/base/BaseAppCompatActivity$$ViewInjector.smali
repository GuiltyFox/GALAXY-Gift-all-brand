.class public Lcom/bzbs/marketplace/base/BaseAppCompatActivity$$ViewInjector;
.super Ljava/lang/Object;
.source "BaseAppCompatActivity$$ViewInjector.java"

# interfaces
.implements Lbutterknife/ButterKnife$Injector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/bzbs/marketplace/base/BaseAppCompatActivity;",
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
.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/base/BaseAppCompatActivity;Ljava/lang/Object;)V
    .registers 6
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
    .line 11
    const v0, 0x7f10056b

    const-string/jumbo v1, "method \'onClickUpdate\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    new-instance v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$$ViewInjector$1;

    invoke-direct {v1, p0, p2}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$$ViewInjector$1;-><init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity$$ViewInjector;Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    const v0, 0x7f10056c

    const-string/jumbo v1, "method \'onClickUpdate\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 21
    new-instance v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$$ViewInjector$2;

    invoke-direct {v1, p0, p2}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$$ViewInjector$2;-><init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity$$ViewInjector;Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    const v0, 0x7f10056d

    const-string/jumbo v1, "method \'onClickUpdate\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 30
    new-instance v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$$ViewInjector$3;

    invoke-direct {v1, p0, p2}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$$ViewInjector$3;-><init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity$$ViewInjector;Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 8
    check-cast p2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/base/BaseAppCompatActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public reset(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 41
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 8
    check-cast p1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$$ViewInjector;->reset(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)V

    return-void
.end method
