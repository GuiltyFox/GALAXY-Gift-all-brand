.class final Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$10;
.super Ljava/lang/Object;
.source "DialogChangeMobileNoUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 289
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$10;->a:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$10;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    .line 293
    return-void
.end method
