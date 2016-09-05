.class public Lcom/bzbs/lib/survey/util/ConnectionDetector;
.super Ljava/lang/Object;
.source "ConnectionDetector.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/ConnectionDetector;->a:Landroid/content/Context;

    .line 13
    return-void
.end method
