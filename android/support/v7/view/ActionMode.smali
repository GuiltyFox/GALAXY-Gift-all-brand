.class public abstract Landroid/support/v7/view/ActionMode;
.super Ljava/lang/Object;
.source "ActionMode.java"


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    return-void
.end method


# virtual methods
.method public abstract a()Landroid/view/MenuInflater;
.end method

.method public abstract a(I)V
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract a(Ljava/lang/CharSequence;)V
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Landroid/support/v7/view/ActionMode;->a:Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 130
    iput-boolean p1, p0, Landroid/support/v7/view/ActionMode;->b:Z

    .line 131
    return-void
.end method

.method public abstract b()Landroid/view/Menu;
.end method

.method public abstract b(I)V
.end method

.method public abstract b(Ljava/lang/CharSequence;)V
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public abstract f()Ljava/lang/CharSequence;
.end method

.method public abstract g()Ljava/lang/CharSequence;
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public abstract i()Landroid/view/View;
.end method

.method public j()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v7/view/ActionMode;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public k()Z
    .registers 2

    .prologue
    .line 141
    iget-boolean v0, p0, Landroid/support/v7/view/ActionMode;->b:Z

    return v0
.end method
