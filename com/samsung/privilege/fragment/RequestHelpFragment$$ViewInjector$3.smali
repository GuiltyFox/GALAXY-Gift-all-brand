.class Lcom/samsung/privilege/fragment/RequestHelpFragment$$ViewInjector$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "RequestHelpFragment$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/RequestHelpFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/samsung/privilege/fragment/RequestHelpFragment;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

.field final synthetic b:Lcom/samsung/privilege/fragment/RequestHelpFragment$$ViewInjector;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/RequestHelpFragment$$ViewInjector;Lcom/samsung/privilege/fragment/RequestHelpFragment;)V
    .registers 3

    .prologue
    .line 48
    iput-object p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$$ViewInjector$3;->b:Lcom/samsung/privilege/fragment/RequestHelpFragment$$ViewInjector;

    iput-object p2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$$ViewInjector$3;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$$ViewInjector$3;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->onClickCancel(Landroid/view/View;)V

    .line 53
    return-void
.end method
