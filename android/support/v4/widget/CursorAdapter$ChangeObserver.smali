.class Landroid/support/v4/widget/CursorAdapter$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "CursorAdapter.java"


# instance fields
.field final synthetic a:Landroid/support/v4/widget/CursorAdapter;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/CursorAdapter;)V
    .registers 3

    .prologue
    .line 463
    iput-object p1, p0, Landroid/support/v4/widget/CursorAdapter$ChangeObserver;->a:Landroid/support/v4/widget/CursorAdapter;

    .line 464
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 465
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 469
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 3

    .prologue
    .line 474
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter$ChangeObserver;->a:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->b()V

    .line 475
    return-void
.end method
