.class final Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
.super Ljava/lang/Object;
.source "CharsToNameCanonicalizer.java"


# instance fields
.field private final length:I

.field private final next:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

.field private final symbol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)V
    .registers 4

    .prologue
    .line 766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 767
    iput-object p1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->symbol:Ljava/lang/String;

    .line 768
    iput-object p2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->next:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .line 769
    if-nez p2, :cond_d

    const/4 v0, 0x1

    :goto_a
    iput v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->length:I

    .line 770
    return-void

    .line 769
    :cond_d
    iget v0, p2, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->length:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method static synthetic access$000(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)I
    .registers 2

    .prologue
    .line 760
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->length:I

    return v0
.end method

.method static synthetic access$100(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    .registers 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->next:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->symbol:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public has([CII)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 773
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->symbol:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, p3, :cond_b

    move-object v0, v1

    .line 782
    :goto_a
    return-object v0

    .line 776
    :cond_b
    const/4 v0, 0x0

    .line 778
    :cond_c
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->symbol:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int v3, p2, v0

    aget-char v3, p1, v3

    if-eq v2, v3, :cond_1a

    move-object v0, v1

    .line 779
    goto :goto_a

    .line 781
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    if-lt v0, p3, :cond_c

    .line 782
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->symbol:Ljava/lang/String;

    goto :goto_a
.end method
