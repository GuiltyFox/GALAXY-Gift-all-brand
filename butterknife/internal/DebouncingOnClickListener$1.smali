.class final Lbutterknife/internal/DebouncingOnClickListener$1;
.super Ljava/lang/Object;
.source "DebouncingOnClickListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbutterknife/internal/DebouncingOnClickListener;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 14
    const/4 v0, 0x1

    # setter for: Lbutterknife/internal/DebouncingOnClickListener;->enabled:Z
    invoke-static {v0}, Lbutterknife/internal/DebouncingOnClickListener;->access$002(Z)Z

    .line 15
    return-void
.end method
