.class public abstract Lcom/ogaclejapan/smarttablayout/utils/PagerItem;
.super Ljava/lang/Object;
.source "PagerItem.java"


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:F


# direct methods
.method protected constructor <init>(Ljava/lang/CharSequence;F)V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/utils/PagerItem;->a:Ljava/lang/CharSequence;

    .line 27
    iput p2, p0, Lcom/ogaclejapan/smarttablayout/utils/PagerItem;->b:F

    .line 28
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/PagerItem;->a:Ljava/lang/CharSequence;

    return-object v0
.end method
