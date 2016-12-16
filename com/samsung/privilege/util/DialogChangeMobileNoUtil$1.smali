.class final Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$1;
.super Ljava/lang/Object;
.source "DialogChangeMobileNoUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$1;->a:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$1;->c:Landroid/os/Handler;

    iput-object p4, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$1;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$1;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$1;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$1;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 61
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$1;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$1;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$1;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$1;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$1;->g:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->b(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method
