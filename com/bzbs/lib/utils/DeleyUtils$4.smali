.class final Lcom/bzbs/lib/utils/DeleyUtils$4;
.super Ljava/lang/Object;
.source "DeleyUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/utils/DeleyUtils;->a(Landroid/content/Context;Lcom/bzbs/lib/utils/DeleyUtils$CallbackThread;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/lib/utils/DeleyUtils$CallbackThread;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/utils/DeleyUtils$CallbackThread;)V
    .registers 2

    .prologue
    .line 44
    iput-object p1, p0, Lcom/bzbs/lib/utils/DeleyUtils$4;->a:Lcom/bzbs/lib/utils/DeleyUtils$CallbackThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bzbs/lib/utils/DeleyUtils$4;->a:Lcom/bzbs/lib/utils/DeleyUtils$CallbackThread;

    invoke-interface {v0}, Lcom/bzbs/lib/utils/DeleyUtils$CallbackThread;->a()V

    .line 48
    return-void
.end method
