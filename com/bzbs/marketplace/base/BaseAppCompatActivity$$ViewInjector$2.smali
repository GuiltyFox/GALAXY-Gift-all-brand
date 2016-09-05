.class Lcom/bzbs/marketplace/base/BaseAppCompatActivity$$ViewInjector$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "BaseAppCompatActivity$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/base/BaseAppCompatActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/base/BaseAppCompatActivity;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

.field final synthetic b:Lcom/bzbs/marketplace/base/BaseAppCompatActivity$$ViewInjector;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity$$ViewInjector;Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)V
    .registers 3

    .prologue
    .line 22
    iput-object p1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$$ViewInjector$2;->b:Lcom/bzbs/marketplace/base/BaseAppCompatActivity$$ViewInjector;

    iput-object p2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$$ViewInjector$2;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$$ViewInjector$2;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onClickUpdate(Landroid/view/View;)V

    .line 27
    return-void
.end method
