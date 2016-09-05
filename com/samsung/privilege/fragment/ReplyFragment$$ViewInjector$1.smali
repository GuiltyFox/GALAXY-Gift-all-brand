.class Lcom/samsung/privilege/fragment/ReplyFragment$$ViewInjector$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ReplyFragment$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/ReplyFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/samsung/privilege/fragment/ReplyFragment;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/fragment/ReplyFragment;

.field final synthetic b:Lcom/samsung/privilege/fragment/ReplyFragment$$ViewInjector;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/ReplyFragment$$ViewInjector;Lcom/samsung/privilege/fragment/ReplyFragment;)V
    .registers 3

    .prologue
    .line 24
    iput-object p1, p0, Lcom/samsung/privilege/fragment/ReplyFragment$$ViewInjector$1;->b:Lcom/samsung/privilege/fragment/ReplyFragment$$ViewInjector;

    iput-object p2, p0, Lcom/samsung/privilege/fragment/ReplyFragment$$ViewInjector$1;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment$$ViewInjector$1;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/privilege/fragment/ReplyFragment;->onClickPost(Landroid/view/View;)V

    .line 29
    return-void
.end method
