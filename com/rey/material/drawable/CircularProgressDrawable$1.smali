.class Lcom/rey/material/drawable/CircularProgressDrawable$1;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rey/material/drawable/CircularProgressDrawable;
.end annotation


# instance fields
.field final synthetic a:Lcom/rey/material/drawable/CircularProgressDrawable;


# direct methods
.method constructor <init>(Lcom/rey/material/drawable/CircularProgressDrawable;)V
    .registers 2

    .prologue
    .line 461
    iput-object p1, p0, Lcom/rey/material/drawable/CircularProgressDrawable$1;->a:Lcom/rey/material/drawable/CircularProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable$1;->a:Lcom/rey/material/drawable/CircularProgressDrawable;

    invoke-static {v0}, Lcom/rey/material/drawable/CircularProgressDrawable;->a(Lcom/rey/material/drawable/CircularProgressDrawable;)V

    .line 466
    return-void
.end method
