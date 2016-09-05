.class Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;
.super Ljava/lang/Object;
.source "SmartTabStrip.java"

# interfaces
.implements Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;


# instance fields
.field private a:[I

.field private b:[I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ogaclejapan/smarttablayout/SmartTabStrip$1;)V
    .registers 2

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .registers 4

    .prologue
    .line 395
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;->a:[I

    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;->a:[I

    array-length v1, v1

    rem-int v1, p1, v1

    aget v0, v0, v1

    return v0
.end method

.method varargs a([I)V
    .registers 2

    .prologue
    .line 404
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;->a:[I

    .line 405
    return-void
.end method

.method public final b(I)I
    .registers 4

    .prologue
    .line 400
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;->b:[I

    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;->b:[I

    array-length v1, v1

    rem-int v1, p1, v1

    aget v0, v0, v1

    return v0
.end method

.method varargs b([I)V
    .registers 2

    .prologue
    .line 408
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;->b:[I

    .line 409
    return-void
.end method
