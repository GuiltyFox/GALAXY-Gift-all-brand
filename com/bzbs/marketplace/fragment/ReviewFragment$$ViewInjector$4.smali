.class Lcom/bzbs/marketplace/fragment/ReviewFragment$$ViewInjector$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ReviewFragment$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/ReviewFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/fragment/ReviewFragment;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

.field final synthetic b:Lcom/bzbs/marketplace/fragment/ReviewFragment$$ViewInjector;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/ReviewFragment$$ViewInjector;Lcom/bzbs/marketplace/fragment/ReviewFragment;)V
    .registers 3

    .prologue
    .line 66
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$$ViewInjector$4;->b:Lcom/bzbs/marketplace/fragment/ReviewFragment$$ViewInjector;

    iput-object p2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$$ViewInjector$4;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$$ViewInjector$4;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-virtual {v0, p1}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->onClickPost(Landroid/view/View;)V

    .line 71
    return-void
.end method
