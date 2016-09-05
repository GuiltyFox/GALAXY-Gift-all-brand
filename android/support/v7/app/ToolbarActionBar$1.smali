.class Landroid/support/v7/app/ToolbarActionBar$1;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ToolbarActionBar;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/ToolbarActionBar;


# direct methods
.method constructor <init>(Landroid/support/v7/app/ToolbarActionBar;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Landroid/support/v7/app/ToolbarActionBar$1;->a:Landroid/support/v7/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$1;->a:Landroid/support/v7/app/ToolbarActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ToolbarActionBar;->k()V

    .line 62
    return-void
.end method
