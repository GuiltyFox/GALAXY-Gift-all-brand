.class Landroid/support/v4/widget/ViewDragHelper$2;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ViewDragHelper;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/ViewDragHelper;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/ViewDragHelper;)V
    .registers 2

    .prologue
    .line 335
    iput-object p1, p0, Landroid/support/v4/widget/ViewDragHelper$2;->a:Landroid/support/v4/widget/ViewDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 338
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper$2;->a:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->c(I)V

    .line 339
    return-void
.end method
