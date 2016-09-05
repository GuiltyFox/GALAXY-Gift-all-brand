.class Lcom/rey/material/drawable/LinearProgressDrawable$1;
.super Ljava/lang/Object;
.source "LinearProgressDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rey/material/drawable/LinearProgressDrawable;
.end annotation


# instance fields
.field final synthetic a:Lcom/rey/material/drawable/LinearProgressDrawable;


# direct methods
.method constructor <init>(Lcom/rey/material/drawable/LinearProgressDrawable;)V
    .registers 2

    .prologue
    .line 636
    iput-object p1, p0, Lcom/rey/material/drawable/LinearProgressDrawable$1;->a:Lcom/rey/material/drawable/LinearProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable$1;->a:Lcom/rey/material/drawable/LinearProgressDrawable;

    invoke-static {v0}, Lcom/rey/material/drawable/LinearProgressDrawable;->a(Lcom/rey/material/drawable/LinearProgressDrawable;)V

    .line 641
    return-void
.end method
