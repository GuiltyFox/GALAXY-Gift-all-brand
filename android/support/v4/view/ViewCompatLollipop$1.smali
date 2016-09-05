.class final Landroid/support/v4/view/ViewCompatLollipop$1;
.super Ljava/lang/Object;
.source "ViewCompatLollipop.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/ViewCompatLollipop;->a(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/OnApplyWindowInsetsListener;


# direct methods
.method constructor <init>(Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .registers 2

    .prologue
    .line 65
    iput-object p1, p0, Landroid/support/v4/view/ViewCompatLollipop$1;->a:Landroid/support/v4/view/OnApplyWindowInsetsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 5

    .prologue
    .line 69
    new-instance v0, Landroid/support/v4/view/WindowInsetsCompatApi21;

    invoke-direct {v0, p2}, Landroid/support/v4/view/WindowInsetsCompatApi21;-><init>(Landroid/view/WindowInsets;)V

    .line 71
    iget-object v1, p0, Landroid/support/v4/view/ViewCompatLollipop$1;->a:Landroid/support/v4/view/OnApplyWindowInsetsListener;

    invoke-interface {v1, p1, v0}, Landroid/support/v4/view/OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/WindowInsetsCompatApi21;

    .line 73
    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompatApi21;->g()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method
