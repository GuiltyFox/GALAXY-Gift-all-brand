.class Lcom/rey/material/drawable/DividerDrawable$1;
.super Ljava/lang/Object;
.source "DividerDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rey/material/drawable/DividerDrawable;
.end annotation


# instance fields
.field final synthetic a:Lcom/rey/material/drawable/DividerDrawable;


# direct methods
.method constructor <init>(Lcom/rey/material/drawable/DividerDrawable;)V
    .registers 2

    .prologue
    .line 231
    iput-object p1, p0, Lcom/rey/material/drawable/DividerDrawable$1;->a:Lcom/rey/material/drawable/DividerDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/rey/material/drawable/DividerDrawable$1;->a:Lcom/rey/material/drawable/DividerDrawable;

    invoke-static {v0}, Lcom/rey/material/drawable/DividerDrawable;->a(Lcom/rey/material/drawable/DividerDrawable;)V

    .line 236
    return-void
.end method
