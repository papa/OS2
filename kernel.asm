
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	09813103          	ld	sp,152(sp) # 8000a098 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	735040ef          	jal	ra,80004f50 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:

    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    csrw sscratch, sp
    80001004:	14011073          	csrw	sscratch,sp
    sd x0, 0(sp)
    80001008:	00013023          	sd	zero,0(sp)
    sd x1, 8(sp)
    8000100c:	00113423          	sd	ra,8(sp)
    sd x2, 16(sp)
    80001010:	00213823          	sd	sp,16(sp)
    sd x3, 24(sp)
    80001014:	00313c23          	sd	gp,24(sp)
    sd x4, 32(sp)
    80001018:	02413023          	sd	tp,32(sp)
    sd x5, 40(sp)
    8000101c:	02513423          	sd	t0,40(sp)
    sd x6, 48(sp)
    80001020:	02613823          	sd	t1,48(sp)
    sd x7, 56(sp)
    80001024:	02713c23          	sd	t2,56(sp)
    sd x8, 64(sp)
    80001028:	04813023          	sd	s0,64(sp)
    sd x9, 72(sp)
    8000102c:	04913423          	sd	s1,72(sp)
    sd x10, 80(sp)
    80001030:	04a13823          	sd	a0,80(sp)
    sd x11, 88(sp)
    80001034:	04b13c23          	sd	a1,88(sp)
    sd x12, 96(sp)
    80001038:	06c13023          	sd	a2,96(sp)
    sd x13, 104(sp)
    8000103c:	06d13423          	sd	a3,104(sp)
    sd x14, 112(sp)
    80001040:	06e13823          	sd	a4,112(sp)
    sd x15, 120(sp)
    80001044:	06f13c23          	sd	a5,120(sp)
    sd x16, 128(sp)
    80001048:	09013023          	sd	a6,128(sp)
    sd x17, 136(sp)
    8000104c:	09113423          	sd	a7,136(sp)
    sd x18, 144(sp)
    80001050:	09213823          	sd	s2,144(sp)
    sd x19, 152(sp)
    80001054:	09313c23          	sd	s3,152(sp)
    sd x20, 160(sp)
    80001058:	0b413023          	sd	s4,160(sp)
    sd x21, 168(sp)
    8000105c:	0b513423          	sd	s5,168(sp)
    sd x22, 176(sp)
    80001060:	0b613823          	sd	s6,176(sp)
    sd x23, 184(sp)
    80001064:	0b713c23          	sd	s7,184(sp)
    sd x24, 192(sp)
    80001068:	0d813023          	sd	s8,192(sp)
    sd x25, 200(sp)
    8000106c:	0d913423          	sd	s9,200(sp)
    sd x26, 208(sp)
    80001070:	0da13823          	sd	s10,208(sp)
    sd x27, 216(sp)
    80001074:	0db13c23          	sd	s11,216(sp)
    sd x28, 224(sp)
    80001078:	0fc13023          	sd	t3,224(sp)
    sd x29, 232(sp)
    8000107c:	0fd13423          	sd	t4,232(sp)
    sd x30, 240(sp)
    80001080:	0fe13823          	sd	t5,240(sp)
    sd x31, 248(sp)
    80001084:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001088:	300020ef          	jal	ra,80003388 <_ZN5Riscv20handleSupervisorTrapEv>

    ld x0, 0(sp)
    8000108c:	00013003          	ld	zero,0(sp)
    ld x1, 8(sp)
    80001090:	00813083          	ld	ra,8(sp)
    ld x2, 16(sp)
    80001094:	01013103          	ld	sp,16(sp)
    ld x3, 24(sp)
    80001098:	01813183          	ld	gp,24(sp)
    ld x4, 32(sp)
    8000109c:	02013203          	ld	tp,32(sp)
    ld x5, 40(sp)
    800010a0:	02813283          	ld	t0,40(sp)
    ld x6, 48(sp)
    800010a4:	03013303          	ld	t1,48(sp)
    ld x7, 56(sp)
    800010a8:	03813383          	ld	t2,56(sp)
    ld x8, 64(sp)
    800010ac:	04013403          	ld	s0,64(sp)
    ld x9, 72(sp)
    800010b0:	04813483          	ld	s1,72(sp)
    ld x10, 80(sp)
    800010b4:	05013503          	ld	a0,80(sp)
    ld x11, 88(sp)
    800010b8:	05813583          	ld	a1,88(sp)
    ld x12, 96(sp)
    800010bc:	06013603          	ld	a2,96(sp)
    ld x13, 104(sp)
    800010c0:	06813683          	ld	a3,104(sp)
    ld x14, 112(sp)
    800010c4:	07013703          	ld	a4,112(sp)
    ld x15, 120(sp)
    800010c8:	07813783          	ld	a5,120(sp)
    ld x16, 128(sp)
    800010cc:	08013803          	ld	a6,128(sp)
    ld x17, 136(sp)
    800010d0:	08813883          	ld	a7,136(sp)
    ld x18, 144(sp)
    800010d4:	09013903          	ld	s2,144(sp)
    ld x19, 152(sp)
    800010d8:	09813983          	ld	s3,152(sp)
    ld x20, 160(sp)
    800010dc:	0a013a03          	ld	s4,160(sp)
    ld x21, 168(sp)
    800010e0:	0a813a83          	ld	s5,168(sp)
    ld x22, 176(sp)
    800010e4:	0b013b03          	ld	s6,176(sp)
    ld x23, 184(sp)
    800010e8:	0b813b83          	ld	s7,184(sp)
    ld x24, 192(sp)
    800010ec:	0c013c03          	ld	s8,192(sp)
    ld x25, 200(sp)
    800010f0:	0c813c83          	ld	s9,200(sp)
    ld x26, 208(sp)
    800010f4:	0d013d03          	ld	s10,208(sp)
    ld x27, 216(sp)
    800010f8:	0d813d83          	ld	s11,216(sp)
    ld x28, 224(sp)
    800010fc:	0e013e03          	ld	t3,224(sp)
    ld x29, 232(sp)
    80001100:	0e813e83          	ld	t4,232(sp)
    ld x30, 240(sp)
    80001104:	0f013f03          	ld	t5,240(sp)
    ld x31, 248(sp)
    80001108:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    8000110c:	10010113          	addi	sp,sp,256

    80001110:	10200073          	sret
	...

0000000080001120 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001120:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001124:	00313c23          	sd	gp,24(sp)
    80001128:	02413023          	sd	tp,32(sp)
    8000112c:	02513423          	sd	t0,40(sp)
    80001130:	02613823          	sd	t1,48(sp)
    80001134:	02713c23          	sd	t2,56(sp)
    80001138:	04813023          	sd	s0,64(sp)
    8000113c:	04913423          	sd	s1,72(sp)
    80001140:	04a13823          	sd	a0,80(sp)
    80001144:	04b13c23          	sd	a1,88(sp)
    80001148:	06c13023          	sd	a2,96(sp)
    8000114c:	06d13423          	sd	a3,104(sp)
    80001150:	06e13823          	sd	a4,112(sp)
    80001154:	06f13c23          	sd	a5,120(sp)
    80001158:	09013023          	sd	a6,128(sp)
    8000115c:	09113423          	sd	a7,136(sp)
    80001160:	09213823          	sd	s2,144(sp)
    80001164:	09313c23          	sd	s3,152(sp)
    80001168:	0b413023          	sd	s4,160(sp)
    8000116c:	0b513423          	sd	s5,168(sp)
    80001170:	0b613823          	sd	s6,176(sp)
    80001174:	0b713c23          	sd	s7,184(sp)
    80001178:	0d813023          	sd	s8,192(sp)
    8000117c:	0d913423          	sd	s9,200(sp)
    80001180:	0da13823          	sd	s10,208(sp)
    80001184:	0db13c23          	sd	s11,216(sp)
    80001188:	0fc13023          	sd	t3,224(sp)
    8000118c:	0fd13423          	sd	t4,232(sp)
    80001190:	0fe13823          	sd	t5,240(sp)
    80001194:	0ff13c23          	sd	t6,248(sp)
    ret
    80001198:	00008067          	ret

000000008000119c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000119c:	01813183          	ld	gp,24(sp)
    800011a0:	02013203          	ld	tp,32(sp)
    800011a4:	02813283          	ld	t0,40(sp)
    800011a8:	03013303          	ld	t1,48(sp)
    800011ac:	03813383          	ld	t2,56(sp)
    800011b0:	04013403          	ld	s0,64(sp)
    800011b4:	04813483          	ld	s1,72(sp)
    800011b8:	05013503          	ld	a0,80(sp)
    800011bc:	05813583          	ld	a1,88(sp)
    800011c0:	06013603          	ld	a2,96(sp)
    800011c4:	06813683          	ld	a3,104(sp)
    800011c8:	07013703          	ld	a4,112(sp)
    800011cc:	07813783          	ld	a5,120(sp)
    800011d0:	08013803          	ld	a6,128(sp)
    800011d4:	08813883          	ld	a7,136(sp)
    800011d8:	09013903          	ld	s2,144(sp)
    800011dc:	09813983          	ld	s3,152(sp)
    800011e0:	0a013a03          	ld	s4,160(sp)
    800011e4:	0a813a83          	ld	s5,168(sp)
    800011e8:	0b013b03          	ld	s6,176(sp)
    800011ec:	0b813b83          	ld	s7,184(sp)
    800011f0:	0c013c03          	ld	s8,192(sp)
    800011f4:	0c813c83          	ld	s9,200(sp)
    800011f8:	0d013d03          	ld	s10,208(sp)
    800011fc:	0d813d83          	ld	s11,216(sp)
    80001200:	0e013e03          	ld	t3,224(sp)
    80001204:	0e813e83          	ld	t4,232(sp)
    80001208:	0f013f03          	ld	t5,240(sp)
    8000120c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001210:	10010113          	addi	sp,sp,256
    ret
    80001214:	00008067          	ret

0000000080001218 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001218:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    8000121c:	00b29a63          	bne	t0,a1,80001230 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001220:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001224:	fe029ae3          	bnez	t0,80001218 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001228:	00000513          	li	a0,0
    jr ra                  # Return.
    8000122c:	00008067          	ret

0000000080001230 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001230:	00100513          	li	a0,1
    80001234:	00008067          	ret

0000000080001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    #a0 - &old->Context
    #a1 - &running->Context
    sd sp, 0 * 8(a0)
    80001238:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 1 * 8(a0)
    8000123c:	00153423          	sd	ra,8(a0)

    ld sp, 0 * 8(a1)
    80001240:	0005b103          	ld	sp,0(a1)
    ld ra, 1 * 8(a1)
    80001244:	0085b083          	ld	ra,8(a1)

    ret
    80001248:	00008067          	ret

000000008000124c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>:

.global _ZN3PCB20contextSwitchExitingEPNS_7ContextE
.type _ZN3PCB20contextSwitchExitingEPNS_7ContextE, @function
_ZN3PCB20contextSwitchExitingEPNS_7ContextE:
    #a0 - &running->Context
    ld sp, 0 * 8(a0)
    8000124c:	00053103          	ld	sp,0(a0)
    ld ra, 1 * 8(a0)
    80001250:	00853083          	ld	ra,8(a0)

    80001254:	00008067          	ret

0000000080001258 <_Z6strcpyPKcPc>:
static slab_allocator_t* slabAllocator = nullptr;

//helping functions

void strcpy(const char* src, char* dst)
{
    80001258:	ff010113          	addi	sp,sp,-16
    8000125c:	00813423          	sd	s0,8(sp)
    80001260:	01010413          	addi	s0,sp,16
    while(*src != '\0')
    80001264:	00054783          	lbu	a5,0(a0)
    80001268:	00078863          	beqz	a5,80001278 <_Z6strcpyPKcPc+0x20>
    {
        *dst = *src;
    8000126c:	00f58023          	sb	a5,0(a1)
        src++;
    80001270:	00150513          	addi	a0,a0,1
    while(*src != '\0')
    80001274:	ff1ff06f          	j	80001264 <_Z6strcpyPKcPc+0xc>
    }
}
    80001278:	00813403          	ld	s0,8(sp)
    8000127c:	01010113          	addi	sp,sp,16
    80001280:	00008067          	ret

0000000080001284 <_Z19slab_allocator_initP14buddyAllocator>:

slab_allocator_t* slab_allocator_init(buddyAllocator *buddy)
{
    80001284:	fe010113          	addi	sp,sp,-32
    80001288:	00113c23          	sd	ra,24(sp)
    8000128c:	00813823          	sd	s0,16(sp)
    80001290:	00913423          	sd	s1,8(sp)
    80001294:	01213023          	sd	s2,0(sp)
    80001298:	02010413          	addi	s0,sp,32
    8000129c:	00050493          	mv	s1,a0
    slab_allocator_t* slabAllocatorLocal = (slab_allocator_t*)(buddy + 1);
    800012a0:	22050913          	addi	s2,a0,544

    slabAllocatorLocal->buddy = buddy;
    800012a4:	22a53023          	sd	a0,544(a0)
    slabAllocatorLocal->cacheList = nullptr;
    800012a8:	22053423          	sd	zero,552(a0)
    for(int i = 0; i < CACHE_BUFFER_SIZE;i++)
    800012ac:	00000713          	li	a4,0
    800012b0:	0180006f          	j	800012c8 <_Z19slab_allocator_initP14buddyAllocator+0x44>
        slabAllocatorLocal->cachesBuffers[i] = nullptr;
    800012b4:	00270793          	addi	a5,a4,2
    800012b8:	00379793          	slli	a5,a5,0x3
    800012bc:	00f487b3          	add	a5,s1,a5
    800012c0:	2207b023          	sd	zero,544(a5)
    for(int i = 0; i < CACHE_BUFFER_SIZE;i++)
    800012c4:	0017071b          	addiw	a4,a4,1
    800012c8:	00c00793          	li	a5,12
    800012cc:	fee7d4e3          	bge	a5,a4,800012b4 <_Z19slab_allocator_initP14buddyAllocator+0x30>

    //TODO
    //char* name = "Cache of caches";
    strcpy("Cache of caches", slabAllocatorLocal->cacheOfCaches.cacheName);
    800012d0:	29848593          	addi	a1,s1,664
    800012d4:	00007517          	auipc	a0,0x7
    800012d8:	d4c50513          	addi	a0,a0,-692 # 80008020 <CONSOLE_STATUS+0x10>
    800012dc:	00000097          	auipc	ra,0x0
    800012e0:	f7c080e7          	jalr	-132(ra) # 80001258 <_Z6strcpyPKcPc>
    slabAllocatorLocal->cacheOfCaches.next = nullptr;
    800012e4:	4804bc23          	sd	zero,1176(s1)
    slabAllocatorLocal->cacheOfCaches.prev = nullptr;
    800012e8:	4a04b023          	sd	zero,1184(s1)
    slabAllocatorLocal->cacheOfCaches.ctor = nullptr;
    800012ec:	4c04b023          	sd	zero,1216(s1)
    slabAllocatorLocal->cacheOfCaches.dtor = nullptr;
    800012f0:	4c04b423          	sd	zero,1224(s1)
    slabAllocatorLocal->cacheOfCaches.slabs_empty = nullptr;
    800012f4:	4a04b423          	sd	zero,1192(s1)
    slabAllocatorLocal->cacheOfCaches.slabs_full = nullptr;
    800012f8:	4a04b823          	sd	zero,1200(s1)
    slabAllocatorLocal->cacheOfCaches.slabs_partial = nullptr;
    800012fc:	4a04bc23          	sd	zero,1208(s1)
    return slabAllocatorLocal;
}
    80001300:	00090513          	mv	a0,s2
    80001304:	01813083          	ld	ra,24(sp)
    80001308:	01013403          	ld	s0,16(sp)
    8000130c:	00813483          	ld	s1,8(sp)
    80001310:	00013903          	ld	s2,0(sp)
    80001314:	02010113          	addi	sp,sp,32
    80001318:	00008067          	ret

000000008000131c <_Z9kmem_initPvi>:

//slab allocator public interface
void kmem_init(void *space, int block_num)
{
    8000131c:	ff010113          	addi	sp,sp,-16
    80001320:	00113423          	sd	ra,8(sp)
    80001324:	00813023          	sd	s0,0(sp)
    80001328:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init(space, block_num);
    8000132c:	00001097          	auipc	ra,0x1
    80001330:	da0080e7          	jalr	-608(ra) # 800020cc <_Z10buddy_initPvm>
    slabAllocator = slab_allocator_init(buddy);
    80001334:	00000097          	auipc	ra,0x0
    80001338:	f50080e7          	jalr	-176(ra) # 80001284 <_Z19slab_allocator_initP14buddyAllocator>
}
    8000133c:	00813083          	ld	ra,8(sp)
    80001340:	00013403          	ld	s0,0(sp)
    80001344:	01010113          	addi	sp,sp,16
    80001348:	00008067          	ret

000000008000134c <_Z17kmem_cache_createPKcmPFvPvES3_>:

kmem_cache_t *kmem_cache_create(const char *name, size_t size,
                                void (*ctor)(void *),
                                void (*dtor)(void *))
{
    8000134c:	ff010113          	addi	sp,sp,-16
    80001350:	00813423          	sd	s0,8(sp)
    80001354:	01010413          	addi	s0,sp,16
    return nullptr;
}
    80001358:	00000513          	li	a0,0
    8000135c:	00813403          	ld	s0,8(sp)
    80001360:	01010113          	addi	sp,sp,16
    80001364:	00008067          	ret

0000000080001368 <_Z9mem_allocm>:
//

#include "../h/syscall_c.hpp"

void* mem_alloc(size_t size)
{
    80001368:	ff010113          	addi	sp,sp,-16
    8000136c:	00813423          	sd	s0,8(sp)
    80001370:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001374:	03f50513          	addi	a0,a0,63
    80001378:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    8000137c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 1");
    80001380:	00100513          	li	a0,1

    __asm__ volatile("ecall"); // system call
    80001384:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    80001388:	00050513          	mv	a0,a0

    return (void*)allocatedAddr;
}
    8000138c:	00813403          	ld	s0,8(sp)
    80001390:	01010113          	addi	sp,sp,16
    80001394:	00008067          	ret

0000000080001398 <_Z8mem_freePv>:

int mem_free(void* p)
{
    80001398:	ff010113          	addi	sp,sp,-16
    8000139c:	00813423          	sd	s0,8(sp)
    800013a0:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    800013a4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 2");
    800013a8:	00200513          	li	a0,2

    __asm__ volatile("ecall"); // system call
    800013ac:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800013b0:	00050513          	mv	a0,a0

    return result;
}
    800013b4:	0005051b          	sext.w	a0,a0
    800013b8:	00813403          	ld	s0,8(sp)
    800013bc:	01010113          	addi	sp,sp,16
    800013c0:	00008067          	ret

00000000800013c4 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    800013c4:	fd010113          	addi	sp,sp,-48
    800013c8:	02113423          	sd	ra,40(sp)
    800013cc:	02813023          	sd	s0,32(sp)
    800013d0:	00913c23          	sd	s1,24(sp)
    800013d4:	01213823          	sd	s2,16(sp)
    800013d8:	01313423          	sd	s3,8(sp)
    800013dc:	03010413          	addi	s0,sp,48
    800013e0:	00050493          	mv	s1,a0
    800013e4:	00058913          	mv	s2,a1
    800013e8:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)args;
    uint64 opLocal = 0x11;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800013ec:	00001537          	lui	a0,0x1
    800013f0:	00000097          	auipc	ra,0x0
    800013f4:	f78080e7          	jalr	-136(ra) # 80001368 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    //todo
    //handle this error
    if(stack_space == 0)
    800013f8:	04050263          	beqz	a0,8000143c <_Z13thread_createPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    800013fc:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    80001400:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    80001404:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    80001408:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    8000140c:	01100793          	li	a5,17
    80001410:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    80001414:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001418:	00050513          	mv	a0,a0

    return result;
    8000141c:	0005051b          	sext.w	a0,a0
}
    80001420:	02813083          	ld	ra,40(sp)
    80001424:	02013403          	ld	s0,32(sp)
    80001428:	01813483          	ld	s1,24(sp)
    8000142c:	01013903          	ld	s2,16(sp)
    80001430:	00813983          	ld	s3,8(sp)
    80001434:	03010113          	addi	sp,sp,48
    80001438:	00008067          	ret
        return -1;
    8000143c:	fff00513          	li	a0,-1
    80001440:	fe1ff06f          	j	80001420 <_Z13thread_createPP7_threadPFvPvES2_+0x5c>

0000000080001444 <_Z15thread_dispatchv>:

void thread_dispatch()
{
    80001444:	ff010113          	addi	sp,sp,-16
    80001448:	00813423          	sd	s0,8(sp)
    8000144c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001450:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80001454:	00000073          	ecall
}
    80001458:	00813403          	ld	s0,8(sp)
    8000145c:	01010113          	addi	sp,sp,16
    80001460:	00008067          	ret

0000000080001464 <_Z11thread_exitv>:

int thread_exit()
{
    80001464:	ff010113          	addi	sp,sp,-16
    80001468:	00813423          	sd	s0,8(sp)
    8000146c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    80001470:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    80001474:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001478:	00050513          	mv	a0,a0
    return result;
}
    8000147c:	0005051b          	sext.w	a0,a0
    80001480:	00813403          	ld	s0,8(sp)
    80001484:	01010113          	addi	sp,sp,16
    80001488:	00008067          	ret

000000008000148c <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned int x)
{
    8000148c:	ff010113          	addi	sp,sp,-16
    80001490:	00813423          	sd	s0,8(sp)
    80001494:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)x));
    80001498:	02059593          	slli	a1,a1,0x20
    8000149c:	0205d593          	srli	a1,a1,0x20
    800014a0:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    800014a4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    800014a8:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    800014ac:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800014b0:	00050513          	mv	a0,a0
    return result;
}
    800014b4:	0005051b          	sext.w	a0,a0
    800014b8:	00813403          	ld	s0,8(sp)
    800014bc:	01010113          	addi	sp,sp,16
    800014c0:	00008067          	ret

00000000800014c4 <_Z9sem_closeP4_sem>:


int sem_close(sem_t handle)
{
    800014c4:	ff010113          	addi	sp,sp,-16
    800014c8:	00813423          	sd	s0,8(sp)
    800014cc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    800014d0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    800014d4:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    800014d8:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800014dc:	00050513          	mv	a0,a0
    return result;
}
    800014e0:	0005051b          	sext.w	a0,a0
    800014e4:	00813403          	ld	s0,8(sp)
    800014e8:	01010113          	addi	sp,sp,16
    800014ec:	00008067          	ret

00000000800014f0 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id)
{
    800014f0:	ff010113          	addi	sp,sp,-16
    800014f4:	00813423          	sd	s0,8(sp)
    800014f8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    800014fc:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    80001500:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    80001504:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001508:	00050513          	mv	a0,a0
    return result;
}
    8000150c:	0005051b          	sext.w	a0,a0
    80001510:	00813403          	ld	s0,8(sp)
    80001514:	01010113          	addi	sp,sp,16
    80001518:	00008067          	ret

000000008000151c <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id)
{
    8000151c:	ff010113          	addi	sp,sp,-16
    80001520:	00813423          	sd	s0,8(sp)
    80001524:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    80001528:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    8000152c:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    80001530:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001534:	00050513          	mv	a0,a0
    return result;
}
    80001538:	0005051b          	sext.w	a0,a0
    8000153c:	00813403          	ld	s0,8(sp)
    80001540:	01010113          	addi	sp,sp,16
    80001544:	00008067          	ret

0000000080001548 <_Z10time_sleepm>:

int time_sleep(uint64 time)
{
    80001548:	ff010113          	addi	sp,sp,-16
    8000154c:	00813423          	sd	s0,8(sp)
    80001550:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)time));
    80001554:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    80001558:	03100513          	li	a0,49

    __asm__ volatile("ecall");
    8000155c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001560:	00050513          	mv	a0,a0
    return result;
}
    80001564:	0005051b          	sext.w	a0,a0
    80001568:	00813403          	ld	s0,8(sp)
    8000156c:	01010113          	addi	sp,sp,16
    80001570:	00008067          	ret

0000000080001574 <_Z12thread_startPv>:

int thread_start(void* p)
{
    80001574:	ff010113          	addi	sp,sp,-16
    80001578:	00813423          	sd	s0,8(sp)
    8000157c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)p));
    80001580:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x15");
    80001584:	01500513          	li	a0,21

    __asm__ volatile("ecall");
    80001588:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000158c:	00050513          	mv	a0,a0
    return result;
}
    80001590:	0005051b          	sext.w	a0,a0
    80001594:	00813403          	ld	s0,8(sp)
    80001598:	01010113          	addi	sp,sp,16
    8000159c:	00008067          	ret

00000000800015a0 <_Z15thread_make_pcbPP7_threadPFvPvES2_>:

int thread_make_pcb(thread_t* handle, void(*start_routine)(void*), void *arg)
{
    800015a0:	fd010113          	addi	sp,sp,-48
    800015a4:	02113423          	sd	ra,40(sp)
    800015a8:	02813023          	sd	s0,32(sp)
    800015ac:	00913c23          	sd	s1,24(sp)
    800015b0:	01213823          	sd	s2,16(sp)
    800015b4:	01313423          	sd	s3,8(sp)
    800015b8:	03010413          	addi	s0,sp,48
    800015bc:	00050493          	mv	s1,a0
    800015c0:	00058913          	mv	s2,a1
    800015c4:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)arg;
    uint64 opLocal = 0x14;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800015c8:	00001537          	lui	a0,0x1
    800015cc:	00000097          	auipc	ra,0x0
    800015d0:	d9c080e7          	jalr	-612(ra) # 80001368 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == 0)
    800015d4:	04050263          	beqz	a0,80001618 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    800015d8:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    800015dc:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    800015e0:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    800015e4:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800015e8:	01400793          	li	a5,20
    800015ec:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800015f0:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800015f4:	00050513          	mv	a0,a0
    return result;
    800015f8:	0005051b          	sext.w	a0,a0
}
    800015fc:	02813083          	ld	ra,40(sp)
    80001600:	02013403          	ld	s0,32(sp)
    80001604:	01813483          	ld	s1,24(sp)
    80001608:	01013903          	ld	s2,16(sp)
    8000160c:	00813983          	ld	s3,8(sp)
    80001610:	03010113          	addi	sp,sp,48
    80001614:	00008067          	ret
        return -1;
    80001618:	fff00513          	li	a0,-1
    8000161c:	fe1ff06f          	j	800015fc <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x5c>

0000000080001620 <_Z4getcv>:

char getc()
{
    80001620:	ff010113          	addi	sp,sp,-16
    80001624:	00813423          	sd	s0,8(sp)
    80001628:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    8000162c:	04100513          	li	a0,65

    __asm__ volatile("ecall");
    80001630:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001634:	00050513          	mv	a0,a0
    return (char)result;
}
    80001638:	0ff57513          	andi	a0,a0,255
    8000163c:	00813403          	ld	s0,8(sp)
    80001640:	01010113          	addi	sp,sp,16
    80001644:	00008067          	ret

0000000080001648 <_Z4putcc>:

void putc(char c)
{
    80001648:	ff010113          	addi	sp,sp,-16
    8000164c:	00813423          	sd	s0,8(sp)
    80001650:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)c));
    80001654:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    80001658:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    8000165c:	00000073          	ecall
}
    80001660:	00813403          	ld	s0,8(sp)
    80001664:	01010113          	addi	sp,sp,16
    80001668:	00008067          	ret

000000008000166c <_Z20sysCallGetCharOutputv>:

char sysCallGetCharOutput()
{
    8000166c:	ff010113          	addi	sp,sp,-16
    80001670:	00813423          	sd	s0,8(sp)
    80001674:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x43");
    80001678:	04300513          	li	a0,67

    __asm__ volatile("ecall");
    8000167c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001680:	00050513          	mv	a0,a0
    return (char)result;
}
    80001684:	0ff57513          	andi	a0,a0,255
    80001688:	00813403          	ld	s0,8(sp)
    8000168c:	01010113          	addi	sp,sp,16
    80001690:	00008067          	ret

0000000080001694 <_Z17thread_delete_pcbP7_thread>:

int thread_delete_pcb(thread_t handle)
{
    80001694:	ff010113          	addi	sp,sp,-16
    80001698:	00813423          	sd	s0,8(sp)
    8000169c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    800016a0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x16");
    800016a4:	01600513          	li	a0,22
    __asm__ volatile("ecall");
    800016a8:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800016ac:	00050513          	mv	a0,a0
    return (char)result;
}
    800016b0:	0ff57513          	andi	a0,a0,255
    800016b4:	00813403          	ld	s0,8(sp)
    800016b8:	01010113          	addi	sp,sp,16
    800016bc:	00008067          	ret

00000000800016c0 <_ZN7_threaddlEPv>:
//

#include "../h/_thread.hpp"
#include "../h/syscall_c.hpp"

void _thread::operator delete(void *p) {
    800016c0:	ff010113          	addi	sp,sp,-16
    800016c4:	00113423          	sd	ra,8(sp)
    800016c8:	00813023          	sd	s0,0(sp)
    800016cc:	01010413          	addi	s0,sp,16
    thread_delete_pcb((thread_t)p);
    800016d0:	00000097          	auipc	ra,0x0
    800016d4:	fc4080e7          	jalr	-60(ra) # 80001694 <_Z17thread_delete_pcbP7_thread>
    800016d8:	00813083          	ld	ra,8(sp)
    800016dc:	00013403          	ld	s0,0(sp)
    800016e0:	01010113          	addi	sp,sp,16
    800016e4:	00008067          	ret

00000000800016e8 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    800016e8:	ff010113          	addi	sp,sp,-16
    800016ec:	00113423          	sd	ra,8(sp)
    800016f0:	00813023          	sd	s0,0(sp)
    800016f4:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    800016f8:	00002097          	auipc	ra,0x2
    800016fc:	b38080e7          	jalr	-1224(ra) # 80003230 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    80001700:	00009797          	auipc	a5,0x9
    80001704:	a307b783          	ld	a5,-1488(a5) # 8000a130 <_ZN3PCB7runningE>
    80001708:	0287b703          	ld	a4,40(a5)
    8000170c:	0307b503          	ld	a0,48(a5)
    80001710:	000700e7          	jalr	a4

    thread_exit();
    80001714:	00000097          	auipc	ra,0x0
    80001718:	d50080e7          	jalr	-688(ra) # 80001464 <_Z11thread_exitv>
}
    8000171c:	00813083          	ld	ra,8(sp)
    80001720:	00013403          	ld	s0,0(sp)
    80001724:	01010113          	addi	sp,sp,16
    80001728:	00008067          	ret

000000008000172c <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    8000172c:	ff010113          	addi	sp,sp,-16
    80001730:	00813423          	sd	s0,8(sp)
    80001734:	01010413          	addi	s0,sp,16
    })
    80001738:	00050023          	sb	zero,0(a0) # 1000 <_entry-0x7ffff000>
    8000173c:	00e53c23          	sd	a4,24(a0)
    80001740:	02053023          	sd	zero,32(a0)
    80001744:	02b53423          	sd	a1,40(a0)
    80001748:	02c53823          	sd	a2,48(a0)
    8000174c:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80001750:	000017b7          	lui	a5,0x1
    80001754:	00f686b3          	add	a3,a3,a5
    })
    80001758:	04d53423          	sd	a3,72(a0)
    8000175c:	00000797          	auipc	a5,0x0
    80001760:	f8c78793          	addi	a5,a5,-116 # 800016e8 <_ZN3PCB6runnerEv>
    80001764:	04f53823          	sd	a5,80(a0)
    80001768:	04050c23          	sb	zero,88(a0)
    nextPCB = 0;
    8000176c:	00053423          	sd	zero,8(a0)
}
    80001770:	00813403          	ld	s0,8(sp)
    80001774:	01010113          	addi	sp,sp,16
    80001778:	00008067          	ret

000000008000177c <_ZN3PCB5startEv>:
{
    8000177c:	ff010113          	addi	sp,sp,-16
    80001780:	00113423          	sd	ra,8(sp)
    80001784:	00813023          	sd	s0,0(sp)
    80001788:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    8000178c:	00001097          	auipc	ra,0x1
    80001790:	350080e7          	jalr	848(ra) # 80002adc <_ZN9Scheduler3putEP3PCB>
}
    80001794:	00813083          	ld	ra,8(sp)
    80001798:	00013403          	ld	s0,0(sp)
    8000179c:	01010113          	addi	sp,sp,16
    800017a0:	00008067          	ret

00000000800017a4 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    800017a4:	fe010113          	addi	sp,sp,-32
    800017a8:	00113c23          	sd	ra,24(sp)
    800017ac:	00813823          	sd	s0,16(sp)
    800017b0:	00913423          	sd	s1,8(sp)
    800017b4:	01213023          	sd	s2,0(sp)
    800017b8:	02010413          	addi	s0,sp,32
    PCB* old = running;
    800017bc:	00009497          	auipc	s1,0x9
    800017c0:	9744b483          	ld	s1,-1676(s1) # 8000a130 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    800017c4:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    800017c8:	00100793          	li	a5,1
    800017cc:	04f70a63          	beq	a4,a5,80001820 <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    800017d0:	00001097          	auipc	ra,0x1
    800017d4:	360080e7          	jalr	864(ra) # 80002b30 <_ZN9Scheduler3getEv>
    800017d8:	00009917          	auipc	s2,0x9
    800017dc:	95890913          	addi	s2,s2,-1704 # 8000a130 <_ZN3PCB7runningE>
    800017e0:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    800017e4:	00100793          	li	a5,1
    800017e8:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);

    Riscv::changePrivMode();
    800017ec:	00002097          	auipc	ra,0x2
    800017f0:	b5c080e7          	jalr	-1188(ra) # 80003348 <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    800017f4:	00093583          	ld	a1,0(s2)
    800017f8:	04858593          	addi	a1,a1,72
    800017fc:	04848513          	addi	a0,s1,72
    80001800:	00000097          	auipc	ra,0x0
    80001804:	a38080e7          	jalr	-1480(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    80001808:	01813083          	ld	ra,24(sp)
    8000180c:	01013403          	ld	s0,16(sp)
    80001810:	00813483          	ld	s1,8(sp)
    80001814:	00013903          	ld	s2,0(sp)
    80001818:	02010113          	addi	sp,sp,32
    8000181c:	00008067          	ret
        Scheduler::put(old);
    80001820:	00048513          	mv	a0,s1
    80001824:	00001097          	auipc	ra,0x1
    80001828:	2b8080e7          	jalr	696(ra) # 80002adc <_ZN9Scheduler3putEP3PCB>
    8000182c:	fa5ff06f          	j	800017d0 <_ZN3PCB8dispatchEv+0x2c>

0000000080001830 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    80001830:	ff010113          	addi	sp,sp,-16
    80001834:	00113423          	sd	ra,8(sp)
    80001838:	00813023          	sd	s0,0(sp)
    8000183c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80001840:	00002097          	auipc	ra,0x2
    80001844:	240080e7          	jalr	576(ra) # 80003a80 <_ZN15MemoryAllocator7kmallocEm>
}
    80001848:	00813083          	ld	ra,8(sp)
    8000184c:	00013403          	ld	s0,0(sp)
    80001850:	01010113          	addi	sp,sp,16
    80001854:	00008067          	ret

0000000080001858 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80001858:	ff010113          	addi	sp,sp,-16
    8000185c:	00113423          	sd	ra,8(sp)
    80001860:	00813023          	sd	s0,0(sp)
    80001864:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80001868:	00002097          	auipc	ra,0x2
    8000186c:	27c080e7          	jalr	636(ra) # 80003ae4 <_ZN15MemoryAllocator5kfreeEPv>
}
    80001870:	00813083          	ld	ra,8(sp)
    80001874:	00013403          	ld	s0,0(sp)
    80001878:	01010113          	addi	sp,sp,16
    8000187c:	00008067          	ret

0000000080001880 <_ZN3PCBD1Ev>:

PCB::~PCB()
    80001880:	ff010113          	addi	sp,sp,-16
    80001884:	00113423          	sd	ra,8(sp)
    80001888:	00813023          	sd	s0,0(sp)
    8000188c:	01010413          	addi	s0,sp,16
{
    MemoryAllocator::kfree(beginSP);
    80001890:	03853503          	ld	a0,56(a0)
    80001894:	00002097          	auipc	ra,0x2
    80001898:	250080e7          	jalr	592(ra) # 80003ae4 <_ZN15MemoryAllocator5kfreeEPv>
}
    8000189c:	00813083          	ld	ra,8(sp)
    800018a0:	00013403          	ld	s0,0(sp)
    800018a4:	01010113          	addi	sp,sp,16
    800018a8:	00008067          	ret

00000000800018ac <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    800018ac:	fd010113          	addi	sp,sp,-48
    800018b0:	02113423          	sd	ra,40(sp)
    800018b4:	02813023          	sd	s0,32(sp)
    800018b8:	00913c23          	sd	s1,24(sp)
    800018bc:	01213823          	sd	s2,16(sp)
    800018c0:	01313423          	sd	s3,8(sp)
    800018c4:	01413023          	sd	s4,0(sp)
    800018c8:	03010413          	addi	s0,sp,48
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    800018cc:	06000513          	li	a0,96
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	f60080e7          	jalr	-160(ra) # 80001830 <_ZN3PCBnwEm>
    800018d8:	00050493          	mv	s1,a0
    800018dc:	00000713          	li	a4,0
    800018e0:	00000693          	li	a3,0
    800018e4:	00000613          	li	a2,0
    800018e8:	00000593          	li	a1,0
    800018ec:	00000097          	auipc	ra,0x0
    800018f0:	e40080e7          	jalr	-448(ra) # 8000172c <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    800018f4:	00100793          	li	a5,1
    800018f8:	00f48023          	sb	a5,0(s1)
    PCB::running = mainSystem;
    800018fc:	00009917          	auipc	s2,0x9
    80001900:	83490913          	addi	s2,s2,-1996 # 8000a130 <_ZN3PCB7runningE>
    80001904:	00993023          	sd	s1,0(s2)
    80001908:	00100a13          	li	s4,1
    8000190c:	0544a023          	sw	s4,64(s1)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80001910:	00001537          	lui	a0,0x1
    80001914:	00002097          	auipc	ra,0x2
    80001918:	16c080e7          	jalr	364(ra) # 80003a80 <_ZN15MemoryAllocator7kmallocEm>
    8000191c:	00050993          	mv	s3,a0
    80001920:	06000513          	li	a0,96
    80001924:	00000097          	auipc	ra,0x0
    80001928:	f0c080e7          	jalr	-244(ra) # 80001830 <_ZN3PCBnwEm>
    8000192c:	00050493          	mv	s1,a0
    80001930:	00200713          	li	a4,2
    80001934:	00098693          	mv	a3,s3
    80001938:	00000613          	li	a2,0
    8000193c:	00008597          	auipc	a1,0x8
    80001940:	76c5b583          	ld	a1,1900(a1) # 8000a0a8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001944:	00000097          	auipc	ra,0x0
    80001948:	de8080e7          	jalr	-536(ra) # 8000172c <_ZN3PCBC1EPFvPvES0_S0_m>
    8000194c:	00993423          	sd	s1,8(s2)
    PCB::consolePCB->systemThread = true;
    80001950:	01448023          	sb	s4,0(s1)
    PCB::consolePCB->start();
    80001954:	00893503          	ld	a0,8(s2)
    80001958:	00000097          	auipc	ra,0x0
    8000195c:	e24080e7          	jalr	-476(ra) # 8000177c <_ZN3PCB5startEv>
    PCB::userPCB = new PCB(&Riscv::userMainWrapper, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80001960:	00001537          	lui	a0,0x1
    80001964:	00002097          	auipc	ra,0x2
    80001968:	11c080e7          	jalr	284(ra) # 80003a80 <_ZN15MemoryAllocator7kmallocEm>
    8000196c:	00050993          	mv	s3,a0
    80001970:	06000513          	li	a0,96
    80001974:	00000097          	auipc	ra,0x0
    80001978:	ebc080e7          	jalr	-324(ra) # 80001830 <_ZN3PCBnwEm>
    8000197c:	00050493          	mv	s1,a0
    80001980:	00200713          	li	a4,2
    80001984:	00098693          	mv	a3,s3
    80001988:	00000613          	li	a2,0
    8000198c:	00008597          	auipc	a1,0x8
    80001990:	74c5b583          	ld	a1,1868(a1) # 8000a0d8 <_GLOBAL_OFFSET_TABLE_+0x80>
    80001994:	00000097          	auipc	ra,0x0
    80001998:	d98080e7          	jalr	-616(ra) # 8000172c <_ZN3PCBC1EPFvPvES0_S0_m>
    8000199c:	00993823          	sd	s1,16(s2)
    PCB::userPCB->start();
    800019a0:	00048513          	mv	a0,s1
    800019a4:	00000097          	auipc	ra,0x0
    800019a8:	dd8080e7          	jalr	-552(ra) # 8000177c <_ZN3PCB5startEv>
}
    800019ac:	02813083          	ld	ra,40(sp)
    800019b0:	02013403          	ld	s0,32(sp)
    800019b4:	01813483          	ld	s1,24(sp)
    800019b8:	01013903          	ld	s2,16(sp)
    800019bc:	00813983          	ld	s3,8(sp)
    800019c0:	00013a03          	ld	s4,0(sp)
    800019c4:	03010113          	addi	sp,sp,48
    800019c8:	00008067          	ret

00000000800019cc <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    800019cc:	ff010113          	addi	sp,sp,-16
    800019d0:	00813423          	sd	s0,8(sp)
    800019d4:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    800019d8:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    800019dc:	ffd50513          	addi	a0,a0,-3
}
    800019e0:	00153513          	seqz	a0,a0
    800019e4:	00813403          	ld	s0,8(sp)
    800019e8:	01010113          	addi	sp,sp,16
    800019ec:	00008067          	ret

00000000800019f0 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    800019f0:	ff010113          	addi	sp,sp,-16
    800019f4:	00113423          	sd	ra,8(sp)
    800019f8:	00813023          	sd	s0,0(sp)
    800019fc:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80001a00:	00008797          	auipc	a5,0x8
    80001a04:	73078793          	addi	a5,a5,1840 # 8000a130 <_ZN3PCB7runningE>
    80001a08:	0007bc23          	sd	zero,24(a5)
    PCB::running->setState(PCB::FINISHED);
    80001a0c:	0007b783          	ld	a5,0(a5)
    80001a10:	00300713          	li	a4,3
    80001a14:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    80001a18:	00000097          	auipc	ra,0x0
    80001a1c:	d8c080e7          	jalr	-628(ra) # 800017a4 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    80001a20:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80001a24:	00002097          	auipc	ra,0x2
    80001a28:	8ec080e7          	jalr	-1812(ra) # 80003310 <_ZN5Riscv13w_a0_sscratchEv>
}
    80001a2c:	00813083          	ld	ra,8(sp)
    80001a30:	00013403          	ld	s0,0(sp)
    80001a34:	01010113          	addi	sp,sp,16
    80001a38:	00008067          	ret

0000000080001a3c <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    80001a3c:	ff010113          	addi	sp,sp,-16
    80001a40:	00113423          	sd	ra,8(sp)
    80001a44:	00813023          	sd	s0,0(sp)
    80001a48:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80001a4c:	00008797          	auipc	a5,0x8
    80001a50:	6e07be23          	sd	zero,1788(a5) # 8000a148 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    80001a54:	00000097          	auipc	ra,0x0
    80001a58:	d50080e7          	jalr	-688(ra) # 800017a4 <_ZN3PCB8dispatchEv>
}
    80001a5c:	00813083          	ld	ra,8(sp)
    80001a60:	00013403          	ld	s0,0(sp)
    80001a64:	01010113          	addi	sp,sp,16
    80001a68:	00008067          	ret

0000000080001a6c <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80001a6c:	ff010113          	addi	sp,sp,-16
    80001a70:	00113423          	sd	ra,8(sp)
    80001a74:	00813023          	sd	s0,0(sp)
    80001a78:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80001a7c:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    80001a80:	00008717          	auipc	a4,0x8
    80001a84:	6b070713          	addi	a4,a4,1712 # 8000a130 <_ZN3PCB7runningE>
    80001a88:	00073c23          	sd	zero,24(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80001a8c:	00073703          	ld	a4,0(a4)
    80001a90:	00008697          	auipc	a3,0x8
    80001a94:	6106b683          	ld	a3,1552(a3) # 8000a0a0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001a98:	0006b683          	ld	a3,0(a3)
    80001a9c:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80001aa0:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    80001aa4:	00001097          	auipc	ra,0x1
    80001aa8:	ebc080e7          	jalr	-324(ra) # 80002960 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80001aac:	00000097          	auipc	ra,0x0
    80001ab0:	cf8080e7          	jalr	-776(ra) # 800017a4 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80001ab4:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80001ab8:	00002097          	auipc	ra,0x2
    80001abc:	858080e7          	jalr	-1960(ra) # 80003310 <_ZN5Riscv13w_a0_sscratchEv>
}
    80001ac0:	00813083          	ld	ra,8(sp)
    80001ac4:	00013403          	ld	s0,0(sp)
    80001ac8:	01010113          	addi	sp,sp,16
    80001acc:	00008067          	ret

0000000080001ad0 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    80001ad0:	fd010113          	addi	sp,sp,-48
    80001ad4:	02113423          	sd	ra,40(sp)
    80001ad8:	02813023          	sd	s0,32(sp)
    80001adc:	00913c23          	sd	s1,24(sp)
    80001ae0:	01213823          	sd	s2,16(sp)
    80001ae4:	01313423          	sd	s3,8(sp)
    80001ae8:	01413023          	sd	s4,0(sp)
    80001aec:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80001af0:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80001af4:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80001af8:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80001afc:	06000513          	li	a0,96
    80001b00:	00000097          	auipc	ra,0x0
    80001b04:	d30080e7          	jalr	-720(ra) # 80001830 <_ZN3PCBnwEm>
    80001b08:	00050493          	mv	s1,a0
    80001b0c:	00200713          	li	a4,2
    80001b10:	00008697          	auipc	a3,0x8
    80001b14:	6406b683          	ld	a3,1600(a3) # 8000a150 <_ZN3PCB10savedRegA4E>
    80001b18:	000a0613          	mv	a2,s4
    80001b1c:	00098593          	mv	a1,s3
    80001b20:	00000097          	auipc	ra,0x0
    80001b24:	c0c080e7          	jalr	-1012(ra) # 8000172c <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80001b28:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80001b2c:	02048e63          	beqz	s1,80001b68 <_ZN3PCB19threadCreateHandlerEv+0x98>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    80001b30:	00048513          	mv	a0,s1
    80001b34:	00000097          	auipc	ra,0x0
    80001b38:	c48080e7          	jalr	-952(ra) # 8000177c <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80001b3c:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80001b40:	00001097          	auipc	ra,0x1
    80001b44:	7d0080e7          	jalr	2000(ra) # 80003310 <_ZN5Riscv13w_a0_sscratchEv>
}
    80001b48:	02813083          	ld	ra,40(sp)
    80001b4c:	02013403          	ld	s0,32(sp)
    80001b50:	01813483          	ld	s1,24(sp)
    80001b54:	01013903          	ld	s2,16(sp)
    80001b58:	00813983          	ld	s3,8(sp)
    80001b5c:	00013a03          	ld	s4,0(sp)
    80001b60:	03010113          	addi	sp,sp,48
    80001b64:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80001b68:	fff00513          	li	a0,-1
    80001b6c:	fd5ff06f          	j	80001b40 <_ZN3PCB19threadCreateHandlerEv+0x70>

0000000080001b70 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80001b70:	ff010113          	addi	sp,sp,-16
    80001b74:	00113423          	sd	ra,8(sp)
    80001b78:	00813023          	sd	s0,0(sp)
    80001b7c:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80001b80:	00058513          	mv	a0,a1
    if(pcb != 0)
    80001b84:	02050463          	beqz	a0,80001bac <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80001b88:	00000097          	auipc	ra,0x0
    80001b8c:	bf4080e7          	jalr	-1036(ra) # 8000177c <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80001b90:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }
    Riscv::w_a0_sscratch();
    80001b94:	00001097          	auipc	ra,0x1
    80001b98:	77c080e7          	jalr	1916(ra) # 80003310 <_ZN5Riscv13w_a0_sscratchEv>
}
    80001b9c:	00813083          	ld	ra,8(sp)
    80001ba0:	00013403          	ld	s0,0(sp)
    80001ba4:	01010113          	addi	sp,sp,16
    80001ba8:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80001bac:	fff00513          	li	a0,-1
    80001bb0:	fe5ff06f          	j	80001b94 <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080001bb4 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80001bb4:	fd010113          	addi	sp,sp,-48
    80001bb8:	02113423          	sd	ra,40(sp)
    80001bbc:	02813023          	sd	s0,32(sp)
    80001bc0:	00913c23          	sd	s1,24(sp)
    80001bc4:	01213823          	sd	s2,16(sp)
    80001bc8:	01313423          	sd	s3,8(sp)
    80001bcc:	01413023          	sd	s4,0(sp)
    80001bd0:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80001bd4:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80001bd8:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80001bdc:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80001be0:	06000513          	li	a0,96
    80001be4:	00000097          	auipc	ra,0x0
    80001be8:	c4c080e7          	jalr	-948(ra) # 80001830 <_ZN3PCBnwEm>
    80001bec:	00050493          	mv	s1,a0
    80001bf0:	00200713          	li	a4,2
    80001bf4:	00008697          	auipc	a3,0x8
    80001bf8:	55c6b683          	ld	a3,1372(a3) # 8000a150 <_ZN3PCB10savedRegA4E>
    80001bfc:	000a0613          	mv	a2,s4
    80001c00:	00098593          	mv	a1,s3
    80001c04:	00000097          	auipc	ra,0x0
    80001c08:	b28080e7          	jalr	-1240(ra) # 8000172c <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80001c0c:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80001c10:	02048863          	beqz	s1,80001c40 <_ZN3PCB20threadMakePCBHandlerEv+0x8c>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
    80001c14:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80001c18:	00001097          	auipc	ra,0x1
    80001c1c:	6f8080e7          	jalr	1784(ra) # 80003310 <_ZN5Riscv13w_a0_sscratchEv>
}
    80001c20:	02813083          	ld	ra,40(sp)
    80001c24:	02013403          	ld	s0,32(sp)
    80001c28:	01813483          	ld	s1,24(sp)
    80001c2c:	01013903          	ld	s2,16(sp)
    80001c30:	00813983          	ld	s3,8(sp)
    80001c34:	00013a03          	ld	s4,0(sp)
    80001c38:	03010113          	addi	sp,sp,48
    80001c3c:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80001c40:	fff00513          	li	a0,-1
    80001c44:	fd5ff06f          	j	80001c18 <_ZN3PCB20threadMakePCBHandlerEv+0x64>

0000000080001c48 <_ZN3PCB19threadDelPCBHandlerEv>:

void PCB::threadDelPCBHandler()
{
    80001c48:	fe010113          	addi	sp,sp,-32
    80001c4c:	00113c23          	sd	ra,24(sp)
    80001c50:	00813823          	sd	s0,16(sp)
    80001c54:	00913423          	sd	s1,8(sp)
    80001c58:	02010413          	addi	s0,sp,32
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80001c5c:	00058493          	mv	s1,a1
    if(pcb != 0)
    80001c60:	02048e63          	beqz	s1,80001c9c <_ZN3PCB19threadDelPCBHandlerEv+0x54>
    {
        delete pcb;
    80001c64:	00048513          	mv	a0,s1
    80001c68:	00000097          	auipc	ra,0x0
    80001c6c:	c18080e7          	jalr	-1000(ra) # 80001880 <_ZN3PCBD1Ev>
    80001c70:	00048513          	mv	a0,s1
    80001c74:	00000097          	auipc	ra,0x0
    80001c78:	be4080e7          	jalr	-1052(ra) # 80001858 <_ZN3PCBdlEPv>
        __asm__ volatile("li a0, 0x0");
    80001c7c:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x1");
    }
    Riscv::w_a0_sscratch();
    80001c80:	00001097          	auipc	ra,0x1
    80001c84:	690080e7          	jalr	1680(ra) # 80003310 <_ZN5Riscv13w_a0_sscratchEv>
}
    80001c88:	01813083          	ld	ra,24(sp)
    80001c8c:	01013403          	ld	s0,16(sp)
    80001c90:	00813483          	ld	s1,8(sp)
    80001c94:	02010113          	addi	sp,sp,32
    80001c98:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80001c9c:	00100513          	li	a0,1
    80001ca0:	fe1ff06f          	j	80001c80 <_ZN3PCB19threadDelPCBHandlerEv+0x38>

0000000080001ca4 <_Z15addBlockToLevelP14buddyAllocatorPvm>:

    addBlockToLevel(buddy, addr, level);
}

void addBlockToLevel(buddyAllocator* buddy, void* addr, size_t level)
{
    80001ca4:	ff010113          	addi	sp,sp,-16
    80001ca8:	00813423          	sd	s0,8(sp)
    80001cac:	01010413          	addi	s0,sp,16
    if(buddy->bucket[level].first == nullptr)
    80001cb0:	00260793          	addi	a5,a2,2
    80001cb4:	00479793          	slli	a5,a5,0x4
    80001cb8:	00f507b3          	add	a5,a0,a5
    80001cbc:	0007b783          	ld	a5,0(a5)
    80001cc0:	02078663          	beqz	a5,80001cec <_Z15addBlockToLevelP14buddyAllocatorPvm+0x48>
        buddy->bucket[level].first = buddy->bucket[level].last = (uint64*)addr;
        *(buddy->bucket[level].last) = 0;
    }
    else
    {
        *(buddy->bucket[level].last) = (uint64)addr;
    80001cc4:	00260613          	addi	a2,a2,2
    80001cc8:	00461613          	slli	a2,a2,0x4
    80001ccc:	00c50633          	add	a2,a0,a2
    80001cd0:	00863783          	ld	a5,8(a2)
    80001cd4:	00b7b023          	sd	a1,0(a5)
        buddy->bucket[level].last = (uint64*)addr;
    80001cd8:	00b63423          	sd	a1,8(a2)
        *(buddy->bucket[level].last) = 0;
    80001cdc:	0005b023          	sd	zero,0(a1)
    }
}
    80001ce0:	00813403          	ld	s0,8(sp)
    80001ce4:	01010113          	addi	sp,sp,16
    80001ce8:	00008067          	ret
        buddy->bucket[level].first = buddy->bucket[level].last = (uint64*)addr;
    80001cec:	00260613          	addi	a2,a2,2
    80001cf0:	00461613          	slli	a2,a2,0x4
    80001cf4:	00c50633          	add	a2,a0,a2
    80001cf8:	00b63423          	sd	a1,8(a2)
    80001cfc:	00b63023          	sd	a1,0(a2)
        *(buddy->bucket[level].last) = 0;
    80001d00:	0005b023          	sd	zero,0(a1)
    80001d04:	fddff06f          	j	80001ce0 <_Z15addBlockToLevelP14buddyAllocatorPvm+0x3c>

0000000080001d08 <_Z17getBuddyBlockAddrPvm>:

size_t getBuddyBlockAddr(void* addr, size_t level)
{
    80001d08:	ff010113          	addi	sp,sp,-16
    80001d0c:	00813423          	sd	s0,8(sp)
    80001d10:	01010413          	addi	s0,sp,16
    return (size_t)addr ^ (1 << level);
    80001d14:	00100793          	li	a5,1
    80001d18:	00b797bb          	sllw	a5,a5,a1
}
    80001d1c:	00a7c533          	xor	a0,a5,a0
    80001d20:	00813403          	ld	s0,8(sp)
    80001d24:	01010113          	addi	sp,sp,16
    80001d28:	00008067          	ret

0000000080001d2c <_Z5splitP14buddyAllocatorPvmmb>:
{
    80001d2c:	fd010113          	addi	sp,sp,-48
    80001d30:	02113423          	sd	ra,40(sp)
    80001d34:	02813023          	sd	s0,32(sp)
    80001d38:	00913c23          	sd	s1,24(sp)
    80001d3c:	01213823          	sd	s2,16(sp)
    80001d40:	01313423          	sd	s3,8(sp)
    80001d44:	01413023          	sd	s4,0(sp)
    80001d48:	03010413          	addi	s0,sp,48
    80001d4c:	00050993          	mv	s3,a0
    80001d50:	00058a13          	mv	s4,a1
    if(!splitMore)
    80001d54:	02070863          	beqz	a4,80001d84 <_Z5splitP14buddyAllocatorPvmmb+0x58>
    80001d58:	00060913          	mv	s2,a2
        if(currLevel == finalLevel)
    80001d5c:	00c68463          	beq	a3,a2,80001d64 <_Z5splitP14buddyAllocatorPvmmb+0x38>
        if(currLevel > finalLevel) // condition not necessary, just for protection
    80001d60:	02d66a63          	bltu	a2,a3,80001d94 <_Z5splitP14buddyAllocatorPvmmb+0x68>
}
    80001d64:	02813083          	ld	ra,40(sp)
    80001d68:	02013403          	ld	s0,32(sp)
    80001d6c:	01813483          	ld	s1,24(sp)
    80001d70:	01013903          	ld	s2,16(sp)
    80001d74:	00813983          	ld	s3,8(sp)
    80001d78:	00013a03          	ld	s4,0(sp)
    80001d7c:	03010113          	addi	sp,sp,48
    80001d80:	00008067          	ret
        addBlockToLevel(buddy, addr, currLevel);
    80001d84:	00068613          	mv	a2,a3
    80001d88:	00000097          	auipc	ra,0x0
    80001d8c:	f1c080e7          	jalr	-228(ra) # 80001ca4 <_Z15addBlockToLevelP14buddyAllocatorPvm>
    80001d90:	fd5ff06f          	j	80001d64 <_Z5splitP14buddyAllocatorPvmmb+0x38>
            size_t buddyBlock = getBuddyBlockAddr(addr, currLevel - 1); // currLevel - 1 for next step
    80001d94:	fff68493          	addi	s1,a3,-1
    80001d98:	00048593          	mv	a1,s1
    80001d9c:	000a0513          	mv	a0,s4
    80001da0:	00000097          	auipc	ra,0x0
    80001da4:	f68080e7          	jalr	-152(ra) # 80001d08 <_Z17getBuddyBlockAddrPvm>
    80001da8:	00050593          	mv	a1,a0
            split(buddy, (void*)buddyBlock, finalLevel, currLevel - 1, false);
    80001dac:	00000713          	li	a4,0
    80001db0:	00048693          	mv	a3,s1
    80001db4:	00090613          	mv	a2,s2
    80001db8:	00098513          	mv	a0,s3
    80001dbc:	00000097          	auipc	ra,0x0
    80001dc0:	f70080e7          	jalr	-144(ra) # 80001d2c <_Z5splitP14buddyAllocatorPvmmb>
            split(buddy, addr, finalLevel, currLevel - 1, true);
    80001dc4:	00100713          	li	a4,1
    80001dc8:	00048693          	mv	a3,s1
    80001dcc:	00090613          	mv	a2,s2
    80001dd0:	000a0593          	mv	a1,s4
    80001dd4:	00098513          	mv	a0,s3
    80001dd8:	00000097          	auipc	ra,0x0
    80001ddc:	f54080e7          	jalr	-172(ra) # 80001d2c <_Z5splitP14buddyAllocatorPvmmb>
    80001de0:	f85ff06f          	j	80001d64 <_Z5splitP14buddyAllocatorPvmmb+0x38>

0000000080001de4 <_Z11buddy_allocP14buddyAllocatorm>:
{
    80001de4:	fd010113          	addi	sp,sp,-48
    80001de8:	02113423          	sd	ra,40(sp)
    80001dec:	02813023          	sd	s0,32(sp)
    80001df0:	00913c23          	sd	s1,24(sp)
    80001df4:	01213823          	sd	s2,16(sp)
    80001df8:	01313423          	sd	s3,8(sp)
    80001dfc:	01413023          	sd	s4,0(sp)
    80001e00:	03010413          	addi	s0,sp,48
    80001e04:	00050913          	mv	s2,a0
    80001e08:	00058493          	mv	s1,a1
    KConsole::trapPrintString("Buddy allocation: ");
    80001e0c:	00006517          	auipc	a0,0x6
    80001e10:	22450513          	addi	a0,a0,548 # 80008030 <CONSOLE_STATUS+0x20>
    80001e14:	00001097          	auipc	ra,0x1
    80001e18:	a2c080e7          	jalr	-1492(ra) # 80002840 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(numOfBlocks); KConsole::trapPrintString("\n");
    80001e1c:	00000613          	li	a2,0
    80001e20:	00a00593          	li	a1,10
    80001e24:	0004851b          	sext.w	a0,s1
    80001e28:	00001097          	auipc	ra,0x1
    80001e2c:	a5c080e7          	jalr	-1444(ra) # 80002884 <_ZN8KConsole12trapPrintIntEiii>
    80001e30:	00006517          	auipc	a0,0x6
    80001e34:	61850513          	addi	a0,a0,1560 # 80008448 <CONSOLE_STATUS+0x438>
    80001e38:	00001097          	auipc	ra,0x1
    80001e3c:	a08080e7          	jalr	-1528(ra) # 80002840 <_ZN8KConsole15trapPrintStringEPKc>
    size_t deg = 0;
    80001e40:	00000a13          	li	s4,0
    size_t x = 1;
    80001e44:	00100793          	li	a5,1
    while(x < num)
    80001e48:	0097f863          	bgeu	a5,s1,80001e58 <_Z11buddy_allocP14buddyAllocatorm+0x74>
        deg++;
    80001e4c:	001a0a13          	addi	s4,s4,1
        x<<=1;
    80001e50:	00179793          	slli	a5,a5,0x1
    while(x < num)
    80001e54:	ff5ff06f          	j	80001e48 <_Z11buddy_allocP14buddyAllocatorm+0x64>
    KConsole::trapPrintString("Level: ");
    80001e58:	00006517          	auipc	a0,0x6
    80001e5c:	1f050513          	addi	a0,a0,496 # 80008048 <CONSOLE_STATUS+0x38>
    80001e60:	00001097          	auipc	ra,0x1
    80001e64:	9e0080e7          	jalr	-1568(ra) # 80002840 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(level); KConsole::trapPrintString("\n");
    80001e68:	00000613          	li	a2,0
    80001e6c:	00a00593          	li	a1,10
    80001e70:	000a051b          	sext.w	a0,s4
    80001e74:	00001097          	auipc	ra,0x1
    80001e78:	a10080e7          	jalr	-1520(ra) # 80002884 <_ZN8KConsole12trapPrintIntEiii>
    80001e7c:	00006517          	auipc	a0,0x6
    80001e80:	5cc50513          	addi	a0,a0,1484 # 80008448 <CONSOLE_STATUS+0x438>
    80001e84:	00001097          	auipc	ra,0x1
    80001e88:	9bc080e7          	jalr	-1604(ra) # 80002840 <_ZN8KConsole15trapPrintStringEPKc>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80001e8c:	000a0493          	mv	s1,s4
    80001e90:	01893783          	ld	a5,24(s2)
    80001e94:	0a97e063          	bltu	a5,s1,80001f34 <_Z11buddy_allocP14buddyAllocatorm+0x150>
        if(buddy->bucket[i].first != nullptr)
    80001e98:	00248793          	addi	a5,s1,2
    80001e9c:	00479793          	slli	a5,a5,0x4
    80001ea0:	00f907b3          	add	a5,s2,a5
    80001ea4:	0007b983          	ld	s3,0(a5)
    80001ea8:	00099663          	bnez	s3,80001eb4 <_Z11buddy_allocP14buddyAllocatorm+0xd0>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80001eac:	00148493          	addi	s1,s1,1
    80001eb0:	fe1ff06f          	j	80001e90 <_Z11buddy_allocP14buddyAllocatorm+0xac>
            KConsole::trapPrintString("Found the block:");
    80001eb4:	00006517          	auipc	a0,0x6
    80001eb8:	19c50513          	addi	a0,a0,412 # 80008050 <CONSOLE_STATUS+0x40>
    80001ebc:	00001097          	auipc	ra,0x1
    80001ec0:	984080e7          	jalr	-1660(ra) # 80002840 <_ZN8KConsole15trapPrintStringEPKc>
            KConsole::trapPrintInt((size_t)ret); KConsole::trapPrintString("\n");
    80001ec4:	00000613          	li	a2,0
    80001ec8:	00a00593          	li	a1,10
    80001ecc:	0009851b          	sext.w	a0,s3
    80001ed0:	00001097          	auipc	ra,0x1
    80001ed4:	9b4080e7          	jalr	-1612(ra) # 80002884 <_ZN8KConsole12trapPrintIntEiii>
    80001ed8:	00006517          	auipc	a0,0x6
    80001edc:	57050513          	addi	a0,a0,1392 # 80008448 <CONSOLE_STATUS+0x438>
    80001ee0:	00001097          	auipc	ra,0x1
    80001ee4:	960080e7          	jalr	-1696(ra) # 80002840 <_ZN8KConsole15trapPrintStringEPKc>
            buddy->bucket[i].first = (uint64*)*ret;
    80001ee8:	0009b703          	ld	a4,0(s3)
    80001eec:	00248793          	addi	a5,s1,2
    80001ef0:	00479793          	slli	a5,a5,0x4
    80001ef4:	00f907b3          	add	a5,s2,a5
    80001ef8:	00e7b023          	sd	a4,0(a5)
            if(buddy->bucket[i].first == nullptr)
    80001efc:	02070263          	beqz	a4,80001f20 <_Z11buddy_allocP14buddyAllocatorm+0x13c>
            split(buddy, (void*)ret, level, i, true);
    80001f00:	00100713          	li	a4,1
    80001f04:	00048693          	mv	a3,s1
    80001f08:	000a0613          	mv	a2,s4
    80001f0c:	00098593          	mv	a1,s3
    80001f10:	00090513          	mv	a0,s2
    80001f14:	00000097          	auipc	ra,0x0
    80001f18:	e18080e7          	jalr	-488(ra) # 80001d2c <_Z5splitP14buddyAllocatorPvmmb>
            return ret;
    80001f1c:	01c0006f          	j	80001f38 <_Z11buddy_allocP14buddyAllocatorm+0x154>
                buddy->bucket[i].last = nullptr;
    80001f20:	00248793          	addi	a5,s1,2
    80001f24:	00479793          	slli	a5,a5,0x4
    80001f28:	00f907b3          	add	a5,s2,a5
    80001f2c:	0007b423          	sd	zero,8(a5)
    80001f30:	fd1ff06f          	j	80001f00 <_Z11buddy_allocP14buddyAllocatorm+0x11c>
    return nullptr;
    80001f34:	00000993          	li	s3,0
}
    80001f38:	00098513          	mv	a0,s3
    80001f3c:	02813083          	ld	ra,40(sp)
    80001f40:	02013403          	ld	s0,32(sp)
    80001f44:	01813483          	ld	s1,24(sp)
    80001f48:	01013903          	ld	s2,16(sp)
    80001f4c:	00813983          	ld	s3,8(sp)
    80001f50:	00013a03          	ld	s4,0(sp)
    80001f54:	03010113          	addi	sp,sp,48
    80001f58:	00008067          	ret

0000000080001f5c <_Z9addBlocksP14buddyAllocatorPvm>:
{
    80001f5c:	fd010113          	addi	sp,sp,-48
    80001f60:	02113423          	sd	ra,40(sp)
    80001f64:	02813023          	sd	s0,32(sp)
    80001f68:	00913c23          	sd	s1,24(sp)
    80001f6c:	01213823          	sd	s2,16(sp)
    80001f70:	01313423          	sd	s3,8(sp)
    80001f74:	03010413          	addi	s0,sp,48
    80001f78:	00050913          	mv	s2,a0
    80001f7c:	00058993          	mv	s3,a1
    size_t deg = 0;
    80001f80:	00000493          	li	s1,0
    size_t x = 1;
    80001f84:	00100793          	li	a5,1
    while(x < num)
    80001f88:	00c7f863          	bgeu	a5,a2,80001f98 <_Z9addBlocksP14buddyAllocatorPvm+0x3c>
        deg++;
    80001f8c:	00148493          	addi	s1,s1,1
        x<<=1;
    80001f90:	00179793          	slli	a5,a5,0x1
    while(x < num)
    80001f94:	ff5ff06f          	j	80001f88 <_Z9addBlocksP14buddyAllocatorPvm+0x2c>
    if(level == buddy->maxLevel)
    80001f98:	01893783          	ld	a5,24(s2)
    80001f9c:	02978e63          	beq	a5,s1,80001fd8 <_Z9addBlocksP14buddyAllocatorPvm+0x7c>
    size_t buddyBlock = getBuddyBlockAddr(addr, level);
    80001fa0:	00048593          	mv	a1,s1
    80001fa4:	00098513          	mv	a0,s3
    80001fa8:	00000097          	auipc	ra,0x0
    80001fac:	d60080e7          	jalr	-672(ra) # 80001d08 <_Z17getBuddyBlockAddrPvm>
    uint64* curr = buddy->bucket[level].first;
    80001fb0:	00248793          	addi	a5,s1,2
    80001fb4:	00479793          	slli	a5,a5,0x4
    80001fb8:	00f907b3          	add	a5,s2,a5
    80001fbc:	0007b783          	ld	a5,0(a5)
    uint64* prev = nullptr;
    80001fc0:	00000713          	li	a4,0
    while(curr != nullptr)
    80001fc4:	0c078c63          	beqz	a5,8000209c <_Z9addBlocksP14buddyAllocatorPvm+0x140>
        if((size_t)curr == buddyBlock)
    80001fc8:	02a78463          	beq	a5,a0,80001ff0 <_Z9addBlocksP14buddyAllocatorPvm+0x94>
        prev = curr;
    80001fcc:	00078713          	mv	a4,a5
        curr = (uint64*)*curr;
    80001fd0:	0007b783          	ld	a5,0(a5)
    while(curr != nullptr)
    80001fd4:	ff1ff06f          	j	80001fc4 <_Z9addBlocksP14buddyAllocatorPvm+0x68>
        addBlockToLevel(buddy, addr, level);
    80001fd8:	00048613          	mv	a2,s1
    80001fdc:	00098593          	mv	a1,s3
    80001fe0:	00090513          	mv	a0,s2
    80001fe4:	00000097          	auipc	ra,0x0
    80001fe8:	cc0080e7          	jalr	-832(ra) # 80001ca4 <_Z15addBlockToLevelP14buddyAllocatorPvm>
        return;
    80001fec:	0c40006f          	j	800020b0 <_Z9addBlocksP14buddyAllocatorPvm+0x154>
            if(prev != nullptr)
    80001ff0:	04070c63          	beqz	a4,80002048 <_Z9addBlocksP14buddyAllocatorPvm+0xec>
                *prev = *curr;
    80001ff4:	0007b683          	ld	a3,0(a5)
    80001ff8:	00d73023          	sd	a3,0(a4)
                if(curr == buddy->bucket[level].last)
    80001ffc:	00248693          	addi	a3,s1,2
    80002000:	00469693          	slli	a3,a3,0x4
    80002004:	00d906b3          	add	a3,s2,a3
    80002008:	0086b683          	ld	a3,8(a3)
    8000200c:	02f68463          	beq	a3,a5,80002034 <_Z9addBlocksP14buddyAllocatorPvm+0xd8>
            if((size_t)addr < buddyBlock) addBlocks(buddy, addr, 1 << (level + 1));
    80002010:	06a9f663          	bgeu	s3,a0,8000207c <_Z9addBlocksP14buddyAllocatorPvm+0x120>
    80002014:	0014849b          	addiw	s1,s1,1
    80002018:	00100613          	li	a2,1
    8000201c:	0096163b          	sllw	a2,a2,s1
    80002020:	00098593          	mv	a1,s3
    80002024:	00090513          	mv	a0,s2
    80002028:	00000097          	auipc	ra,0x0
    8000202c:	f34080e7          	jalr	-204(ra) # 80001f5c <_Z9addBlocksP14buddyAllocatorPvm>
    80002030:	0800006f          	j	800020b0 <_Z9addBlocksP14buddyAllocatorPvm+0x154>
                    buddy->bucket[level].last = prev;
    80002034:	00248793          	addi	a5,s1,2
    80002038:	00479793          	slli	a5,a5,0x4
    8000203c:	00f907b3          	add	a5,s2,a5
    80002040:	00e7b423          	sd	a4,8(a5)
    80002044:	fcdff06f          	j	80002010 <_Z9addBlocksP14buddyAllocatorPvm+0xb4>
                if(*curr == 0)
    80002048:	0007b703          	ld	a4,0(a5)
    8000204c:	00071e63          	bnez	a4,80002068 <_Z9addBlocksP14buddyAllocatorPvm+0x10c>
                    buddy->bucket[level].first = buddy->bucket[level].last = nullptr;
    80002050:	00248793          	addi	a5,s1,2
    80002054:	00479793          	slli	a5,a5,0x4
    80002058:	00f907b3          	add	a5,s2,a5
    8000205c:	0007b423          	sd	zero,8(a5)
    80002060:	0007b023          	sd	zero,0(a5)
    80002064:	fadff06f          	j	80002010 <_Z9addBlocksP14buddyAllocatorPvm+0xb4>
                    buddy->bucket[level].first = (uint64*)*curr;
    80002068:	00248793          	addi	a5,s1,2
    8000206c:	00479793          	slli	a5,a5,0x4
    80002070:	00f907b3          	add	a5,s2,a5
    80002074:	00e7b023          	sd	a4,0(a5)
    80002078:	f99ff06f          	j	80002010 <_Z9addBlocksP14buddyAllocatorPvm+0xb4>
            else addBlocks(buddy, (void*)buddyBlock, 1 << (level + 1));
    8000207c:	0014849b          	addiw	s1,s1,1
    80002080:	00100613          	li	a2,1
    80002084:	0096163b          	sllw	a2,a2,s1
    80002088:	00050593          	mv	a1,a0
    8000208c:	00090513          	mv	a0,s2
    80002090:	00000097          	auipc	ra,0x0
    80002094:	ecc080e7          	jalr	-308(ra) # 80001f5c <_Z9addBlocksP14buddyAllocatorPvm>
            return;
    80002098:	0180006f          	j	800020b0 <_Z9addBlocksP14buddyAllocatorPvm+0x154>
    addBlockToLevel(buddy, addr, level);
    8000209c:	00048613          	mv	a2,s1
    800020a0:	00098593          	mv	a1,s3
    800020a4:	00090513          	mv	a0,s2
    800020a8:	00000097          	auipc	ra,0x0
    800020ac:	bfc080e7          	jalr	-1028(ra) # 80001ca4 <_Z15addBlockToLevelP14buddyAllocatorPvm>
}
    800020b0:	02813083          	ld	ra,40(sp)
    800020b4:	02013403          	ld	s0,32(sp)
    800020b8:	01813483          	ld	s1,24(sp)
    800020bc:	01013903          	ld	s2,16(sp)
    800020c0:	00813983          	ld	s3,8(sp)
    800020c4:	03010113          	addi	sp,sp,48
    800020c8:	00008067          	ret

00000000800020cc <_Z10buddy_initPvm>:
{
    800020cc:	fd010113          	addi	sp,sp,-48
    800020d0:	02113423          	sd	ra,40(sp)
    800020d4:	02813023          	sd	s0,32(sp)
    800020d8:	00913c23          	sd	s1,24(sp)
    800020dc:	01213823          	sd	s2,16(sp)
    800020e0:	01313423          	sd	s3,8(sp)
    800020e4:	03010413          	addi	s0,sp,48
    800020e8:	00050913          	mv	s2,a0
    800020ec:	00058993          	mv	s3,a1
    KConsole::trapPrintString("Buddy initialization\n");
    800020f0:	00006517          	auipc	a0,0x6
    800020f4:	f7850513          	addi	a0,a0,-136 # 80008068 <CONSOLE_STATUS+0x58>
    800020f8:	00000097          	auipc	ra,0x0
    800020fc:	748080e7          	jalr	1864(ra) # 80002840 <_ZN8KConsole15trapPrintStringEPKc>
    size_t blockAddr = getBlockAddr((size_t)addr);
    80002100:	00090493          	mv	s1,s2
    return addr & mask;
    80002104:	fffff537          	lui	a0,0xfffff
    80002108:	00a97933          	and	s2,s2,a0
    if((size_t)addr != blockAddr) // if start address not aligned
    8000210c:	01248863          	beq	s1,s2,8000211c <_Z10buddy_initPvm+0x50>
    return currBlock + BLOCK_SIZE;
    80002110:	000014b7          	lui	s1,0x1
    80002114:	009904b3          	add	s1,s2,s1
        numOfBlocks--;
    80002118:	fff98993          	addi	s3,s3,-1
    KConsole::trapPrintString("Buddy starting address: ");
    8000211c:	00006517          	auipc	a0,0x6
    80002120:	f6450513          	addi	a0,a0,-156 # 80008080 <CONSOLE_STATUS+0x70>
    80002124:	00000097          	auipc	ra,0x0
    80002128:	71c080e7          	jalr	1820(ra) # 80002840 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(buddyAddr); KConsole::trapPrintString("\n");
    8000212c:	00000613          	li	a2,0
    80002130:	00a00593          	li	a1,10
    80002134:	0004851b          	sext.w	a0,s1
    80002138:	00000097          	auipc	ra,0x0
    8000213c:	74c080e7          	jalr	1868(ra) # 80002884 <_ZN8KConsole12trapPrintIntEiii>
    80002140:	00006517          	auipc	a0,0x6
    80002144:	30850513          	addi	a0,a0,776 # 80008448 <CONSOLE_STATUS+0x438>
    80002148:	00000097          	auipc	ra,0x0
    8000214c:	6f8080e7          	jalr	1784(ra) # 80002840 <_ZN8KConsole15trapPrintStringEPKc>
    numOfBlocks--; // take one block for buddy metadata
    80002150:	fff98993          	addi	s3,s3,-1
    buddyAllocator* buddy = (buddyAllocator*)buddyAddr;
    80002154:	00048913          	mv	s2,s1
    return addr & mask;
    80002158:	fffff7b7          	lui	a5,0xfffff
    8000215c:	00f4f7b3          	and	a5,s1,a5
    return currBlock + BLOCK_SIZE;
    80002160:	00001737          	lui	a4,0x1
    80002164:	00e787b3          	add	a5,a5,a4
    buddy->startAddr = (void*)getNextBlockAddr(buddyAddr);
    80002168:	00f4b423          	sd	a5,8(s1) # 1008 <_entry-0x7fffeff8>
    buddy->numOfBlocks = numOfBlocks;
    8000216c:	0134b023          	sd	s3,0(s1)
    buddy->numOfFreeBlocks = numOfBlocks;
    80002170:	0134b823          	sd	s3,16(s1)
    size_t deg = 0;
    80002174:	00000793          	li	a5,0
    size_t x = 1;
    80002178:	00100713          	li	a4,1
    while(x <= num)
    8000217c:	00e9e863          	bltu	s3,a4,8000218c <_Z10buddy_initPvm+0xc0>
        deg++;
    80002180:	00178793          	addi	a5,a5,1 # fffffffffffff001 <end+0xffffffff7ffefbb1>
        x<<=1;
    80002184:	00171713          	slli	a4,a4,0x1
    while(x <= num)
    80002188:	ff5ff06f          	j	8000217c <_Z10buddy_initPvm+0xb0>
    return deg - 1;
    8000218c:	fff78693          	addi	a3,a5,-1
    buddy->maxLevel = getDeg2Floor(numOfBlocks);
    80002190:	00d93c23          	sd	a3,24(s2)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80002194:	00000713          	li	a4,0
    80002198:	02e6e063          	bltu	a3,a4,800021b8 <_Z10buddy_initPvm+0xec>
        buddy->bucket[i].first = buddy->bucket[i].last = nullptr;
    8000219c:	00270793          	addi	a5,a4,2 # 1002 <_entry-0x7fffeffe>
    800021a0:	00479793          	slli	a5,a5,0x4
    800021a4:	00f907b3          	add	a5,s2,a5
    800021a8:	0007b423          	sd	zero,8(a5)
    800021ac:	0007b023          	sd	zero,0(a5)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    800021b0:	00170713          	addi	a4,a4,1
    800021b4:	fe5ff06f          	j	80002198 <_Z10buddy_initPvm+0xcc>
    for(size_t i = 0;i < numOfBlocks;i++)
    800021b8:	00000493          	li	s1,0
    800021bc:	0334f463          	bgeu	s1,s3,800021e4 <_Z10buddy_initPvm+0x118>
        addBlocks(buddy, (block*)buddy->startAddr + i, 1);
    800021c0:	00893583          	ld	a1,8(s2)
    800021c4:	00c49793          	slli	a5,s1,0xc
    800021c8:	00100613          	li	a2,1
    800021cc:	00f585b3          	add	a1,a1,a5
    800021d0:	00090513          	mv	a0,s2
    800021d4:	00000097          	auipc	ra,0x0
    800021d8:	d88080e7          	jalr	-632(ra) # 80001f5c <_Z9addBlocksP14buddyAllocatorPvm>
    for(size_t i = 0;i < numOfBlocks;i++)
    800021dc:	00148493          	addi	s1,s1,1
    800021e0:	fddff06f          	j	800021bc <_Z10buddy_initPvm+0xf0>
}
    800021e4:	00090513          	mv	a0,s2
    800021e8:	02813083          	ld	ra,40(sp)
    800021ec:	02013403          	ld	s0,32(sp)
    800021f0:	01813483          	ld	s1,24(sp)
    800021f4:	01013903          	ld	s2,16(sp)
    800021f8:	00813983          	ld	s3,8(sp)
    800021fc:	03010113          	addi	sp,sp,48
    80002200:	00008067          	ret

0000000080002204 <_Z10buddy_freeP14buddyAllocatorPvm>:
{
    80002204:	fd010113          	addi	sp,sp,-48
    80002208:	02113423          	sd	ra,40(sp)
    8000220c:	02813023          	sd	s0,32(sp)
    80002210:	00913c23          	sd	s1,24(sp)
    80002214:	01213823          	sd	s2,16(sp)
    80002218:	01313423          	sd	s3,8(sp)
    8000221c:	03010413          	addi	s0,sp,48
    80002220:	00050993          	mv	s3,a0
    80002224:	00058493          	mv	s1,a1
    80002228:	00060913          	mv	s2,a2
    KConsole::trapPrintString("Buddy free: ");
    8000222c:	00006517          	auipc	a0,0x6
    80002230:	e7450513          	addi	a0,a0,-396 # 800080a0 <CONSOLE_STATUS+0x90>
    80002234:	00000097          	auipc	ra,0x0
    80002238:	60c080e7          	jalr	1548(ra) # 80002840 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt((size_t)addr); KConsole::trapPrintString(" ");
    8000223c:	00000613          	li	a2,0
    80002240:	00a00593          	li	a1,10
    80002244:	0004851b          	sext.w	a0,s1
    80002248:	00000097          	auipc	ra,0x0
    8000224c:	63c080e7          	jalr	1596(ra) # 80002884 <_ZN8KConsole12trapPrintIntEiii>
    80002250:	00006517          	auipc	a0,0x6
    80002254:	e6050513          	addi	a0,a0,-416 # 800080b0 <CONSOLE_STATUS+0xa0>
    80002258:	00000097          	auipc	ra,0x0
    8000225c:	5e8080e7          	jalr	1512(ra) # 80002840 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(numOfBlocks); KConsole::trapPrintString("\n");
    80002260:	00000613          	li	a2,0
    80002264:	00a00593          	li	a1,10
    80002268:	0009051b          	sext.w	a0,s2
    8000226c:	00000097          	auipc	ra,0x0
    80002270:	618080e7          	jalr	1560(ra) # 80002884 <_ZN8KConsole12trapPrintIntEiii>
    80002274:	00006517          	auipc	a0,0x6
    80002278:	1d450513          	addi	a0,a0,468 # 80008448 <CONSOLE_STATUS+0x438>
    8000227c:	00000097          	auipc	ra,0x0
    80002280:	5c4080e7          	jalr	1476(ra) # 80002840 <_ZN8KConsole15trapPrintStringEPKc>
    addBlocks(buddy, addr, numOfBlocks);
    80002284:	00090613          	mv	a2,s2
    80002288:	00048593          	mv	a1,s1
    8000228c:	00098513          	mv	a0,s3
    80002290:	00000097          	auipc	ra,0x0
    80002294:	ccc080e7          	jalr	-820(ra) # 80001f5c <_Z9addBlocksP14buddyAllocatorPvm>
}
    80002298:	02813083          	ld	ra,40(sp)
    8000229c:	02013403          	ld	s0,32(sp)
    800022a0:	01813483          	ld	s1,24(sp)
    800022a4:	01013903          	ld	s2,16(sp)
    800022a8:	00813983          	ld	s3,8(sp)
    800022ac:	03010113          	addi	sp,sp,48
    800022b0:	00008067          	ret

00000000800022b4 <_Z14printBuddyInfoP14buddyAllocator>:

void printBuddyInfo(buddyAllocator* buddy)
{
    800022b4:	fd010113          	addi	sp,sp,-48
    800022b8:	02113423          	sd	ra,40(sp)
    800022bc:	02813023          	sd	s0,32(sp)
    800022c0:	00913c23          	sd	s1,24(sp)
    800022c4:	01213823          	sd	s2,16(sp)
    800022c8:	01313423          	sd	s3,8(sp)
    800022cc:	03010413          	addi	s0,sp,48
    800022d0:	00050993          	mv	s3,a0
    KConsole::trapPrintString("Buddy info\n--------------\n");
    800022d4:	00006517          	auipc	a0,0x6
    800022d8:	de450513          	addi	a0,a0,-540 # 800080b8 <CONSOLE_STATUS+0xa8>
    800022dc:	00000097          	auipc	ra,0x0
    800022e0:	564080e7          	jalr	1380(ra) # 80002840 <_ZN8KConsole15trapPrintStringEPKc>
    for(int i = buddy->maxLevel;i>=0;i--)
    800022e4:	0189a903          	lw	s2,24(s3)
    800022e8:	0080006f          	j	800022f0 <_Z14printBuddyInfoP14buddyAllocator+0x3c>
    800022ec:	fff9091b          	addiw	s2,s2,-1
    800022f0:	08094463          	bltz	s2,80002378 <_Z14printBuddyInfoP14buddyAllocator+0xc4>
    {
        KConsole::trapPrintString("Level ");
    800022f4:	00006517          	auipc	a0,0x6
    800022f8:	de450513          	addi	a0,a0,-540 # 800080d8 <CONSOLE_STATUS+0xc8>
    800022fc:	00000097          	auipc	ra,0x0
    80002300:	544080e7          	jalr	1348(ra) # 80002840 <_ZN8KConsole15trapPrintStringEPKc>
        KConsole::trapPrintInt(i);KConsole::trapPrintString("\n");
    80002304:	00000613          	li	a2,0
    80002308:	00a00593          	li	a1,10
    8000230c:	00090513          	mv	a0,s2
    80002310:	00000097          	auipc	ra,0x0
    80002314:	574080e7          	jalr	1396(ra) # 80002884 <_ZN8KConsole12trapPrintIntEiii>
    80002318:	00006517          	auipc	a0,0x6
    8000231c:	13050513          	addi	a0,a0,304 # 80008448 <CONSOLE_STATUS+0x438>
    80002320:	00000097          	auipc	ra,0x0
    80002324:	520080e7          	jalr	1312(ra) # 80002840 <_ZN8KConsole15trapPrintStringEPKc>
        KConsole::trapPrintString("Free blocks on this level\n");
    80002328:	00006517          	auipc	a0,0x6
    8000232c:	db850513          	addi	a0,a0,-584 # 800080e0 <CONSOLE_STATUS+0xd0>
    80002330:	00000097          	auipc	ra,0x0
    80002334:	510080e7          	jalr	1296(ra) # 80002840 <_ZN8KConsole15trapPrintStringEPKc>
        uint64* curr = buddy->bucket[i].first;
    80002338:	00290793          	addi	a5,s2,2
    8000233c:	00479793          	slli	a5,a5,0x4
    80002340:	00f987b3          	add	a5,s3,a5
    80002344:	0007b483          	ld	s1,0(a5)
        while(curr != 0)
    80002348:	fa0482e3          	beqz	s1,800022ec <_Z14printBuddyInfoP14buddyAllocator+0x38>
        {
            KConsole::trapPrintInt(*curr);
    8000234c:	00000613          	li	a2,0
    80002350:	00a00593          	li	a1,10
    80002354:	0004a503          	lw	a0,0(s1)
    80002358:	00000097          	auipc	ra,0x0
    8000235c:	52c080e7          	jalr	1324(ra) # 80002884 <_ZN8KConsole12trapPrintIntEiii>
            KConsole::trapPrintString("\n");
    80002360:	00006517          	auipc	a0,0x6
    80002364:	0e850513          	addi	a0,a0,232 # 80008448 <CONSOLE_STATUS+0x438>
    80002368:	00000097          	auipc	ra,0x0
    8000236c:	4d8080e7          	jalr	1240(ra) # 80002840 <_ZN8KConsole15trapPrintStringEPKc>
            curr = (uint64*)*curr;
    80002370:	0004b483          	ld	s1,0(s1)
        while(curr != 0)
    80002374:	fd5ff06f          	j	80002348 <_Z14printBuddyInfoP14buddyAllocator+0x94>
        }
    }
    80002378:	02813083          	ld	ra,40(sp)
    8000237c:	02013403          	ld	s0,32(sp)
    80002380:	01813483          	ld	s1,24(sp)
    80002384:	01013903          	ld	s2,16(sp)
    80002388:	00813983          	ld	s3,8(sp)
    8000238c:	03010113          	addi	sp,sp,48
    80002390:	00008067          	ret

0000000080002394 <_ZN8KConsole10initializeEv>:
char KConsole::inputBuffer[bufferSize];
char KConsole::outputBuffer[bufferSize];
uint64 KConsole::pendingPutc = 0;

void KConsole::initialize()
{
    80002394:	fe010113          	addi	sp,sp,-32
    80002398:	00113c23          	sd	ra,24(sp)
    8000239c:	00813823          	sd	s0,16(sp)
    800023a0:	00913423          	sd	s1,8(sp)
    800023a4:	01213023          	sd	s2,0(sp)
    800023a8:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    800023ac:	01800513          	li	a0,24
    800023b0:	00002097          	auipc	ra,0x2
    800023b4:	9f8080e7          	jalr	-1544(ra) # 80003da8 <_ZN10KSemaphorenwEm>
    800023b8:	00050493          	mv	s1,a0
    800023bc:	00000593          	li	a1,0
    800023c0:	00001097          	auipc	ra,0x1
    800023c4:	784080e7          	jalr	1924(ra) # 80003b44 <_ZN10KSemaphoreC1Ei>
    800023c8:	00008797          	auipc	a5,0x8
    800023cc:	d897b823          	sd	s1,-624(a5) # 8000a158 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    800023d0:	01800513          	li	a0,24
    800023d4:	00002097          	auipc	ra,0x2
    800023d8:	9d4080e7          	jalr	-1580(ra) # 80003da8 <_ZN10KSemaphorenwEm>
    800023dc:	00050493          	mv	s1,a0
    800023e0:	00000593          	li	a1,0
    800023e4:	00001097          	auipc	ra,0x1
    800023e8:	760080e7          	jalr	1888(ra) # 80003b44 <_ZN10KSemaphoreC1Ei>
    800023ec:	00008797          	auipc	a5,0x8
    800023f0:	d697ba23          	sd	s1,-652(a5) # 8000a160 <_ZN8KConsole19hasCharactersOutputE>
}
    800023f4:	01813083          	ld	ra,24(sp)
    800023f8:	01013403          	ld	s0,16(sp)
    800023fc:	00813483          	ld	s1,8(sp)
    80002400:	00013903          	ld	s2,0(sp)
    80002404:	02010113          	addi	sp,sp,32
    80002408:	00008067          	ret
    8000240c:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80002410:	00048513          	mv	a0,s1
    80002414:	00002097          	auipc	ra,0x2
    80002418:	a34080e7          	jalr	-1484(ra) # 80003e48 <_ZN10KSemaphoredlEPv>
    8000241c:	00090513          	mv	a0,s2
    80002420:	0000d097          	auipc	ra,0xd
    80002424:	e98080e7          	jalr	-360(ra) # 8000f2b8 <_Unwind_Resume>
    80002428:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    8000242c:	00048513          	mv	a0,s1
    80002430:	00002097          	auipc	ra,0x2
    80002434:	a18080e7          	jalr	-1512(ra) # 80003e48 <_ZN10KSemaphoredlEPv>
    80002438:	00090513          	mv	a0,s2
    8000243c:	0000d097          	auipc	ra,0xd
    80002440:	e7c080e7          	jalr	-388(ra) # 8000f2b8 <_Unwind_Resume>

0000000080002444 <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    80002444:	00008697          	auipc	a3,0x8
    80002448:	d1468693          	addi	a3,a3,-748 # 8000a158 <_ZN8KConsole18hasCharactersInputE>
    8000244c:	0106b603          	ld	a2,16(a3)
    80002450:	00160793          	addi	a5,a2,1
    80002454:	00002737          	lui	a4,0x2
    80002458:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    8000245c:	00e7f7b3          	and	a5,a5,a4
    80002460:	0186b703          	ld	a4,24(a3)
    80002464:	04e78263          	beq	a5,a4,800024a8 <_ZN8KConsole17putCharacterInputEc+0x64>
{
    80002468:	ff010113          	addi	sp,sp,-16
    8000246c:	00113423          	sd	ra,8(sp)
    80002470:	00813023          	sd	s0,0(sp)
    80002474:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    80002478:	0000a717          	auipc	a4,0xa
    8000247c:	d2070713          	addi	a4,a4,-736 # 8000c198 <_ZN8KConsole11inputBufferE>
    80002480:	00c70633          	add	a2,a4,a2
    80002484:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    80002488:	00f6b823          	sd	a5,16(a3)
    hasCharactersInput->signal();
    8000248c:	0006b503          	ld	a0,0(a3)
    80002490:	00002097          	auipc	ra,0x2
    80002494:	8d0080e7          	jalr	-1840(ra) # 80003d60 <_ZN10KSemaphore6signalEv>
}
    80002498:	00813083          	ld	ra,8(sp)
    8000249c:	00013403          	ld	s0,0(sp)
    800024a0:	01010113          	addi	sp,sp,16
    800024a4:	00008067          	ret
    800024a8:	00008067          	ret

00000000800024ac <_ZN8KConsole24getCharactersFromConsoleEv>:
    uint64 operation = *(uint8*)CONSOLE_STATUS;
    800024ac:	00008797          	auipc	a5,0x8
    800024b0:	bbc7b783          	ld	a5,-1092(a5) # 8000a068 <_GLOBAL_OFFSET_TABLE_+0x10>
    800024b4:	0007b783          	ld	a5,0(a5)
    800024b8:	0007c783          	lbu	a5,0(a5)
    if(operation & KConsole::STATUS_READ_MASK)
    800024bc:	0017f793          	andi	a5,a5,1
    800024c0:	02078063          	beqz	a5,800024e0 <_ZN8KConsole24getCharactersFromConsoleEv+0x34>
        char c = *(uint8*)CONSOLE_TX_DATA;
    800024c4:	00008797          	auipc	a5,0x8
    800024c8:	bc47b783          	ld	a5,-1084(a5) # 8000a088 <_GLOBAL_OFFSET_TABLE_+0x30>
    800024cc:	0007b783          	ld	a5,0(a5)
    800024d0:	0007c503          	lbu	a0,0(a5)
        if(KConsole::pendingGetc > 0)
    800024d4:	00008797          	auipc	a5,0x8
    800024d8:	ca47b783          	ld	a5,-860(a5) # 8000a178 <_ZN8KConsole11pendingGetcE>
    800024dc:	00079463          	bnez	a5,800024e4 <_ZN8KConsole24getCharactersFromConsoleEv+0x38>
    800024e0:	00008067          	ret
{
    800024e4:	ff010113          	addi	sp,sp,-16
    800024e8:	00113423          	sd	ra,8(sp)
    800024ec:	00813023          	sd	s0,0(sp)
    800024f0:	01010413          	addi	s0,sp,16
            KConsole::pendingGetc--;
    800024f4:	fff78793          	addi	a5,a5,-1
    800024f8:	00008717          	auipc	a4,0x8
    800024fc:	c8f73023          	sd	a5,-896(a4) # 8000a178 <_ZN8KConsole11pendingGetcE>
            KConsole::putCharacterInput(c);
    80002500:	00000097          	auipc	ra,0x0
    80002504:	f44080e7          	jalr	-188(ra) # 80002444 <_ZN8KConsole17putCharacterInputEc>
}
    80002508:	00813083          	ld	ra,8(sp)
    8000250c:	00013403          	ld	s0,0(sp)
    80002510:	01010113          	addi	sp,sp,16
    80002514:	00008067          	ret

0000000080002518 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80002518:	fe010113          	addi	sp,sp,-32
    8000251c:	00113c23          	sd	ra,24(sp)
    80002520:	00813823          	sd	s0,16(sp)
    80002524:	00913423          	sd	s1,8(sp)
    80002528:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    8000252c:	00008497          	auipc	s1,0x8
    80002530:	c2c48493          	addi	s1,s1,-980 # 8000a158 <_ZN8KConsole18hasCharactersInputE>
    80002534:	0004b503          	ld	a0,0(s1)
    80002538:	00001097          	auipc	ra,0x1
    8000253c:	6b0080e7          	jalr	1712(ra) # 80003be8 <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    80002540:	0184b783          	ld	a5,24(s1)
    80002544:	0104b703          	ld	a4,16(s1)
    80002548:	04e78063          	beq	a5,a4,80002588 <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    8000254c:	0000a717          	auipc	a4,0xa
    80002550:	c4c70713          	addi	a4,a4,-948 # 8000c198 <_ZN8KConsole11inputBufferE>
    80002554:	00f70733          	add	a4,a4,a5
    80002558:	00074503          	lbu	a0,0(a4)
    inputHead = (inputHead+1)%bufferSize;
    8000255c:	00178793          	addi	a5,a5,1
    80002560:	00002737          	lui	a4,0x2
    80002564:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002568:	00e7f7b3          	and	a5,a5,a4
    8000256c:	00008717          	auipc	a4,0x8
    80002570:	c0f73223          	sd	a5,-1020(a4) # 8000a170 <_ZN8KConsole9inputHeadE>
    return c;
}
    80002574:	01813083          	ld	ra,24(sp)
    80002578:	01013403          	ld	s0,16(sp)
    8000257c:	00813483          	ld	s1,8(sp)
    80002580:	02010113          	addi	sp,sp,32
    80002584:	00008067          	ret
        return -1;
    80002588:	0ff00513          	li	a0,255
    8000258c:	fe9ff06f          	j	80002574 <_ZN8KConsole17getCharacterInputEv+0x5c>

0000000080002590 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    80002590:	00008697          	auipc	a3,0x8
    80002594:	bc868693          	addi	a3,a3,-1080 # 8000a158 <_ZN8KConsole18hasCharactersInputE>
    80002598:	0286b603          	ld	a2,40(a3)
    8000259c:	00160793          	addi	a5,a2,1
    800025a0:	00002737          	lui	a4,0x2
    800025a4:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    800025a8:	00e7f7b3          	and	a5,a5,a4
    800025ac:	0306b703          	ld	a4,48(a3)
    800025b0:	04e78a63          	beq	a5,a4,80002604 <_ZN8KConsole18putCharacterOutputEc+0x74>
{
    800025b4:	ff010113          	addi	sp,sp,-16
    800025b8:	00113423          	sd	ra,8(sp)
    800025bc:	00813023          	sd	s0,0(sp)
    800025c0:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    800025c4:	00068713          	mv	a4,a3
    800025c8:	0386b683          	ld	a3,56(a3)
    800025cc:	00168693          	addi	a3,a3,1
    800025d0:	02d73c23          	sd	a3,56(a4)
    outputBuffer[outputTail] = c;
    800025d4:	00008697          	auipc	a3,0x8
    800025d8:	bc468693          	addi	a3,a3,-1084 # 8000a198 <_ZN8KConsole12outputBufferE>
    800025dc:	00c68633          	add	a2,a3,a2
    800025e0:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    800025e4:	02f73423          	sd	a5,40(a4)
    hasCharactersOutput->signal();
    800025e8:	00873503          	ld	a0,8(a4)
    800025ec:	00001097          	auipc	ra,0x1
    800025f0:	774080e7          	jalr	1908(ra) # 80003d60 <_ZN10KSemaphore6signalEv>
}
    800025f4:	00813083          	ld	ra,8(sp)
    800025f8:	00013403          	ld	s0,0(sp)
    800025fc:	01010113          	addi	sp,sp,16
    80002600:	00008067          	ret
    80002604:	00008067          	ret

0000000080002608 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80002608:	fe010113          	addi	sp,sp,-32
    8000260c:	00113c23          	sd	ra,24(sp)
    80002610:	00813823          	sd	s0,16(sp)
    80002614:	00913423          	sd	s1,8(sp)
    80002618:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    8000261c:	00008497          	auipc	s1,0x8
    80002620:	b3c48493          	addi	s1,s1,-1220 # 8000a158 <_ZN8KConsole18hasCharactersInputE>
    80002624:	0084b503          	ld	a0,8(s1)
    80002628:	00001097          	auipc	ra,0x1
    8000262c:	5c0080e7          	jalr	1472(ra) # 80003be8 <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    80002630:	0304b783          	ld	a5,48(s1)
    80002634:	0284b703          	ld	a4,40(s1)
    80002638:	04e78063          	beq	a5,a4,80002678 <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;
    char c = outputBuffer[outputHead];
    8000263c:	00008717          	auipc	a4,0x8
    80002640:	b5c70713          	addi	a4,a4,-1188 # 8000a198 <_ZN8KConsole12outputBufferE>
    80002644:	00f70733          	add	a4,a4,a5
    80002648:	00074503          	lbu	a0,0(a4)
    outputHead = (outputHead+1)%bufferSize;
    8000264c:	00178793          	addi	a5,a5,1
    80002650:	00002737          	lui	a4,0x2
    80002654:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002658:	00e7f7b3          	and	a5,a5,a4
    8000265c:	00008717          	auipc	a4,0x8
    80002660:	b2f73623          	sd	a5,-1236(a4) # 8000a188 <_ZN8KConsole10outputHeadE>
    return c;
}
    80002664:	01813083          	ld	ra,24(sp)
    80002668:	01013403          	ld	s0,16(sp)
    8000266c:	00813483          	ld	s1,8(sp)
    80002670:	02010113          	addi	sp,sp,32
    80002674:	00008067          	ret
        return -1;
    80002678:	0ff00513          	li	a0,255
    8000267c:	fe9ff06f          	j	80002664 <_ZN8KConsole18getCharacterOutputEv+0x5c>

0000000080002680 <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    80002680:	ff010113          	addi	sp,sp,-16
    80002684:	00113423          	sd	ra,8(sp)
    80002688:	00813023          	sd	s0,0(sp)
    8000268c:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    80002690:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    80002694:	0ff57513          	andi	a0,a0,255
    80002698:	00000097          	auipc	ra,0x0
    8000269c:	ef8080e7          	jalr	-264(ra) # 80002590 <_ZN8KConsole18putCharacterOutputEc>
}
    800026a0:	00813083          	ld	ra,8(sp)
    800026a4:	00013403          	ld	s0,0(sp)
    800026a8:	01010113          	addi	sp,sp,16
    800026ac:	00008067          	ret

00000000800026b0 <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    800026b0:	fe010113          	addi	sp,sp,-32
    800026b4:	00113c23          	sd	ra,24(sp)
    800026b8:	00813823          	sd	s0,16(sp)
    800026bc:	00913423          	sd	s1,8(sp)
    800026c0:	02010413          	addi	s0,sp,32
    pendingGetc++;
    800026c4:	00008717          	auipc	a4,0x8
    800026c8:	a9470713          	addi	a4,a4,-1388 # 8000a158 <_ZN8KConsole18hasCharactersInputE>
    800026cc:	02073783          	ld	a5,32(a4)
    800026d0:	00178793          	addi	a5,a5,1
    800026d4:	02f73023          	sd	a5,32(a4)
    char ch;
    ch = getCharacterInput();
    800026d8:	00000097          	auipc	ra,0x0
    800026dc:	e40080e7          	jalr	-448(ra) # 80002518 <_ZN8KConsole17getCharacterInputEv>
    800026e0:	00050493          	mv	s1,a0
    if(ch!=0x01b)
    800026e4:	01b00793          	li	a5,27
    800026e8:	02f51663          	bne	a0,a5,80002714 <_ZN8KConsole11getcHandlerEv+0x64>
        putCharacterOutput(ch);

    if(ch==13)
    800026ec:	00d00793          	li	a5,13
    800026f0:	02f48863          	beq	s1,a5,80002720 <_ZN8KConsole11getcHandlerEv+0x70>
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    800026f4:	00048513          	mv	a0,s1
    Riscv::w_a0_sscratch();
    800026f8:	00001097          	auipc	ra,0x1
    800026fc:	c18080e7          	jalr	-1000(ra) # 80003310 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002700:	01813083          	ld	ra,24(sp)
    80002704:	01013403          	ld	s0,16(sp)
    80002708:	00813483          	ld	s1,8(sp)
    8000270c:	02010113          	addi	sp,sp,32
    80002710:	00008067          	ret
        putCharacterOutput(ch);
    80002714:	00000097          	auipc	ra,0x0
    80002718:	e7c080e7          	jalr	-388(ra) # 80002590 <_ZN8KConsole18putCharacterOutputEc>
    8000271c:	fd1ff06f          	j	800026ec <_ZN8KConsole11getcHandlerEv+0x3c>
        putCharacterOutput(13);
    80002720:	00d00513          	li	a0,13
    80002724:	00000097          	auipc	ra,0x0
    80002728:	e6c080e7          	jalr	-404(ra) # 80002590 <_ZN8KConsole18putCharacterOutputEc>
        putCharacterOutput(10);
    8000272c:	00a00513          	li	a0,10
    80002730:	00000097          	auipc	ra,0x0
    80002734:	e60080e7          	jalr	-416(ra) # 80002590 <_ZN8KConsole18putCharacterOutputEc>
    80002738:	fbdff06f          	j	800026f4 <_ZN8KConsole11getcHandlerEv+0x44>

000000008000273c <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    8000273c:	ff010113          	addi	sp,sp,-16
    80002740:	00813423          	sd	s0,8(sp)
    80002744:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    80002748:	00008517          	auipc	a0,0x8
    8000274c:	a4853503          	ld	a0,-1464(a0) # 8000a190 <_ZN8KConsole11pendingPutcE>
    80002750:	00153513          	seqz	a0,a0
    80002754:	00813403          	ld	s0,8(sp)
    80002758:	01010113          	addi	sp,sp,16
    8000275c:	00008067          	ret

0000000080002760 <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    80002760:	fe010113          	addi	sp,sp,-32
    80002764:	00113c23          	sd	ra,24(sp)
    80002768:	00813823          	sd	s0,16(sp)
    8000276c:	02010413          	addi	s0,sp,32
    80002770:	0180006f          	j	80002788 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>
                thread_exit();
    80002774:	fffff097          	auipc	ra,0xfffff
    80002778:	cf0080e7          	jalr	-784(ra) # 80001464 <_Z11thread_exitv>
    8000277c:	0340006f          	j	800027b0 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
                thread_dispatch();
    80002780:	fffff097          	auipc	ra,0xfffff
    80002784:	cc4080e7          	jalr	-828(ra) # 80001444 <_Z15thread_dispatchv>
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    80002788:	00008797          	auipc	a5,0x8
    8000278c:	9387b783          	ld	a5,-1736(a5) # 8000a0c0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002790:	0007c783          	lbu	a5,0(a5)
    80002794:	00078e63          	beqz	a5,800027b0 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80002798:	00000097          	auipc	ra,0x0
    8000279c:	fa4080e7          	jalr	-92(ra) # 8000273c <_ZN8KConsole17outputBufferEmptyEv>
    800027a0:	00050863          	beqz	a0,800027b0 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    800027a4:	00008797          	auipc	a5,0x8
    800027a8:	9d47b783          	ld	a5,-1580(a5) # 8000a178 <_ZN8KConsole11pendingGetcE>
    800027ac:	fc0784e3          	beqz	a5,80002774 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 operation = *(uint8*)CONSOLE_STATUS;
    800027b0:	00008797          	auipc	a5,0x8
    800027b4:	8b87b783          	ld	a5,-1864(a5) # 8000a068 <_GLOBAL_OFFSET_TABLE_+0x10>
    800027b8:	0007b783          	ld	a5,0(a5)
    800027bc:	0007c783          	lbu	a5,0(a5)
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
    800027c0:	0207f793          	andi	a5,a5,32
    800027c4:	fa078ee3          	beqz	a5,80002780 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
    800027c8:	00008797          	auipc	a5,0x8
    800027cc:	9c87b783          	ld	a5,-1592(a5) # 8000a190 <_ZN8KConsole11pendingPutcE>
    800027d0:	fa0788e3          	beqz	a5,80002780 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    800027d4:	fffff097          	auipc	ra,0xfffff
    800027d8:	e98080e7          	jalr	-360(ra) # 8000166c <_Z20sysCallGetCharOutputv>
    800027dc:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    800027e0:	00008717          	auipc	a4,0x8
    800027e4:	97870713          	addi	a4,a4,-1672 # 8000a158 <_ZN8KConsole18hasCharactersInputE>
    800027e8:	03873783          	ld	a5,56(a4)
    800027ec:	fff78793          	addi	a5,a5,-1
    800027f0:	02f73c23          	sd	a5,56(a4)
                *(uint8*)CONSOLE_RX_DATA = c;
    800027f4:	00008797          	auipc	a5,0x8
    800027f8:	86c7b783          	ld	a5,-1940(a5) # 8000a060 <_GLOBAL_OFFSET_TABLE_+0x8>
    800027fc:	0007b783          	ld	a5,0(a5)
    80002800:	fef44703          	lbu	a4,-17(s0)
    80002804:	00e78023          	sb	a4,0(a5)
    80002808:	f81ff06f          	j	80002788 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>

000000008000280c <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    8000280c:	ff010113          	addi	sp,sp,-16
    80002810:	00113423          	sd	ra,8(sp)
    80002814:	00813023          	sd	s0,0(sp)
    80002818:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    8000281c:	00000097          	auipc	ra,0x0
    80002820:	dec080e7          	jalr	-532(ra) # 80002608 <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80002824:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80002828:	00001097          	auipc	ra,0x1
    8000282c:	ae8080e7          	jalr	-1304(ra) # 80003310 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002830:	00813083          	ld	ra,8(sp)
    80002834:	00013403          	ld	s0,0(sp)
    80002838:	01010113          	addi	sp,sp,16
    8000283c:	00008067          	ret

0000000080002840 <_ZN8KConsole15trapPrintStringEPKc>:

void KConsole::trapPrintString(const char *string)
{
    80002840:	fe010113          	addi	sp,sp,-32
    80002844:	00113c23          	sd	ra,24(sp)
    80002848:	00813823          	sd	s0,16(sp)
    8000284c:	00913423          	sd	s1,8(sp)
    80002850:	02010413          	addi	s0,sp,32
    80002854:	00050493          	mv	s1,a0
    while (*string != '\0')
    80002858:	0004c503          	lbu	a0,0(s1)
    8000285c:	00050a63          	beqz	a0,80002870 <_ZN8KConsole15trapPrintStringEPKc+0x30>
    {
        KConsole::putCharacterOutput(*string);
    80002860:	00000097          	auipc	ra,0x0
    80002864:	d30080e7          	jalr	-720(ra) # 80002590 <_ZN8KConsole18putCharacterOutputEc>
        string++;
    80002868:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000286c:	fedff06f          	j	80002858 <_ZN8KConsole15trapPrintStringEPKc+0x18>
    }
}
    80002870:	01813083          	ld	ra,24(sp)
    80002874:	01013403          	ld	s0,16(sp)
    80002878:	00813483          	ld	s1,8(sp)
    8000287c:	02010113          	addi	sp,sp,32
    80002880:	00008067          	ret

0000000080002884 <_ZN8KConsole12trapPrintIntEiii>:

void KConsole::trapPrintInt(int xx, int base, int sgn)
{
    80002884:	fb010113          	addi	sp,sp,-80
    80002888:	04113423          	sd	ra,72(sp)
    8000288c:	04813023          	sd	s0,64(sp)
    80002890:	02913c23          	sd	s1,56(sp)
    80002894:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    80002898:	00006797          	auipc	a5,0x6
    8000289c:	86878793          	addi	a5,a5,-1944 # 80008100 <CONSOLE_STATUS+0xf0>
    800028a0:	0007b703          	ld	a4,0(a5)
    800028a4:	fce43423          	sd	a4,-56(s0)
    800028a8:	0087b703          	ld	a4,8(a5)
    800028ac:	fce43823          	sd	a4,-48(s0)
    800028b0:	0107c783          	lbu	a5,16(a5)
    800028b4:	fcf40c23          	sb	a5,-40(s0)
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0) {
    800028b8:	00060463          	beqz	a2,800028c0 <_ZN8KConsole12trapPrintIntEiii+0x3c>
    800028bc:	08054263          	bltz	a0,80002940 <_ZN8KConsole12trapPrintIntEiii+0xbc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800028c0:	0005051b          	sext.w	a0,a0
    neg = 0;
    800028c4:	00000813          	li	a6,0
    }

    i = 0;
    800028c8:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    800028cc:	0005871b          	sext.w	a4,a1
    800028d0:	02b577bb          	remuw	a5,a0,a1
    800028d4:	00048693          	mv	a3,s1
    800028d8:	0014849b          	addiw	s1,s1,1
    800028dc:	02079793          	slli	a5,a5,0x20
    800028e0:	0207d793          	srli	a5,a5,0x20
    800028e4:	fe040613          	addi	a2,s0,-32
    800028e8:	00f607b3          	add	a5,a2,a5
    800028ec:	fe87c603          	lbu	a2,-24(a5)
    800028f0:	fe040793          	addi	a5,s0,-32
    800028f4:	00d787b3          	add	a5,a5,a3
    800028f8:	fcc78c23          	sb	a2,-40(a5)
    }while((x /= base) != 0);
    800028fc:	0005061b          	sext.w	a2,a0
    80002900:	02b5553b          	divuw	a0,a0,a1
    80002904:	fce674e3          	bgeu	a2,a4,800028cc <_ZN8KConsole12trapPrintIntEiii+0x48>
    if(neg)
    80002908:	00080c63          	beqz	a6,80002920 <_ZN8KConsole12trapPrintIntEiii+0x9c>
        buf[i++] = '-';
    8000290c:	fe040793          	addi	a5,s0,-32
    80002910:	009784b3          	add	s1,a5,s1
    80002914:	02d00793          	li	a5,45
    80002918:	fcf48c23          	sb	a5,-40(s1)
    8000291c:	0026849b          	addiw	s1,a3,2

    while(--i >= 0)
    80002920:	fff4849b          	addiw	s1,s1,-1
    80002924:	0204c463          	bltz	s1,8000294c <_ZN8KConsole12trapPrintIntEiii+0xc8>
        KConsole::putCharacterOutput(buf[i]);
    80002928:	fe040793          	addi	a5,s0,-32
    8000292c:	009787b3          	add	a5,a5,s1
    80002930:	fd87c503          	lbu	a0,-40(a5)
    80002934:	00000097          	auipc	ra,0x0
    80002938:	c5c080e7          	jalr	-932(ra) # 80002590 <_ZN8KConsole18putCharacterOutputEc>
    8000293c:	fe5ff06f          	j	80002920 <_ZN8KConsole12trapPrintIntEiii+0x9c>
        x = -xx;
    80002940:	40a0053b          	negw	a0,a0
        neg = 1;
    80002944:	00100813          	li	a6,1
        x = -xx;
    80002948:	f81ff06f          	j	800028c8 <_ZN8KConsole12trapPrintIntEiii+0x44>
}
    8000294c:	04813083          	ld	ra,72(sp)
    80002950:	04013403          	ld	s0,64(sp)
    80002954:	03813483          	ld	s1,56(sp)
    80002958:	05010113          	addi	sp,sp,80
    8000295c:	00008067          	ret

0000000080002960 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/Riscv.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80002960:	ff010113          	addi	sp,sp,-16
    80002964:	00813423          	sd	s0,8(sp)
    80002968:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    8000296c:	00007797          	auipc	a5,0x7
    80002970:	75c7b783          	ld	a5,1884(a5) # 8000a0c8 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002974:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    80002978:	00500793          	li	a5,5
    8000297c:	04f62023          	sw	a5,64(a2)
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80002980:	0000c797          	auipc	a5,0xc
    80002984:	8187b783          	ld	a5,-2024(a5) # 8000e198 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80002988:	00000593          	li	a1,0
    while(curr != 0)
    8000298c:	02078063          	beqz	a5,800029ac <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002990:	02063683          	ld	a3,32(a2)
    80002994:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80002998:	00e6e863          	bltu	a3,a4,800029a8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    8000299c:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    800029a0:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800029a4:	fe9ff06f          	j	8000298c <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    800029a8:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    800029ac:	00058a63          	beqz	a1,800029c0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    800029b0:	00c5b423          	sd	a2,8(a1)
}
    800029b4:	00813403          	ld	s0,8(sp)
    800029b8:	01010113          	addi	sp,sp,16
    800029bc:	00008067          	ret
        sleepingPCBHead = PCB::running;
    800029c0:	0000b797          	auipc	a5,0xb
    800029c4:	7cc7bc23          	sd	a2,2008(a5) # 8000e198 <_ZN12SleepPCBList15sleepingPCBHeadE>
    800029c8:	fedff06f          	j	800029b4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

00000000800029cc <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    PCB* curr = sleepingPCBHead;
    800029cc:	0000b517          	auipc	a0,0xb
    800029d0:	7cc53503          	ld	a0,1996(a0) # 8000e198 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    800029d4:	06050e63          	beqz	a0,80002a50 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
        return;

    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800029d8:	06050c63          	beqz	a0,80002a50 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    800029dc:	02053783          	ld	a5,32(a0)
    800029e0:	00007717          	auipc	a4,0x7
    800029e4:	6c073703          	ld	a4,1728(a4) # 8000a0a0 <_GLOBAL_OFFSET_TABLE_+0x48>
    800029e8:	00073703          	ld	a4,0(a4)
    800029ec:	06f76263          	bltu	a4,a5,80002a50 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    800029f0:	fe010113          	addi	sp,sp,-32
    800029f4:	00113c23          	sd	ra,24(sp)
    800029f8:	00813823          	sd	s0,16(sp)
    800029fc:	00913423          	sd	s1,8(sp)
    80002a00:	02010413          	addi	s0,sp,32
    80002a04:	0180006f          	j	80002a1c <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80002a08:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80002a0c:	00007717          	auipc	a4,0x7
    80002a10:	69473703          	ld	a4,1684(a4) # 8000a0a0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002a14:	00073703          	ld	a4,0(a4)
    80002a18:	02f76263          	bltu	a4,a5,80002a3c <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    80002a1c:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    80002a20:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    80002a24:	00000097          	auipc	ra,0x0
    80002a28:	0b8080e7          	jalr	184(ra) # 80002adc <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    80002a2c:	0000b797          	auipc	a5,0xb
    80002a30:	7697b623          	sd	s1,1900(a5) # 8000e198 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    80002a34:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80002a38:	fc0498e3          	bnez	s1,80002a08 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    80002a3c:	01813083          	ld	ra,24(sp)
    80002a40:	01013403          	ld	s0,16(sp)
    80002a44:	00813483          	ld	s1,8(sp)
    80002a48:	02010113          	addi	sp,sp,32
    80002a4c:	00008067          	ret
    80002a50:	00008067          	ret

0000000080002a54 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    80002a54:	ff010113          	addi	sp,sp,-16
    80002a58:	00113423          	sd	ra,8(sp)
    80002a5c:	00813023          	sd	s0,0(sp)
    80002a60:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80002a64:	00001097          	auipc	ra,0x1
    80002a68:	01c080e7          	jalr	28(ra) # 80003a80 <_ZN15MemoryAllocator7kmallocEm>
}
    80002a6c:	00813083          	ld	ra,8(sp)
    80002a70:	00013403          	ld	s0,0(sp)
    80002a74:	01010113          	addi	sp,sp,16
    80002a78:	00008067          	ret

0000000080002a7c <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    80002a7c:	ff010113          	addi	sp,sp,-16
    80002a80:	00113423          	sd	ra,8(sp)
    80002a84:	00813023          	sd	s0,0(sp)
    80002a88:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80002a8c:	00001097          	auipc	ra,0x1
    80002a90:	058080e7          	jalr	88(ra) # 80003ae4 <_ZN15MemoryAllocator5kfreeEPv>
}
    80002a94:	00813083          	ld	ra,8(sp)
    80002a98:	00013403          	ld	s0,0(sp)
    80002a9c:	01010113          	addi	sp,sp,16
    80002aa0:	00008067          	ret

0000000080002aa4 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80002aa4:	ff010113          	addi	sp,sp,-16
    80002aa8:	00813423          	sd	s0,8(sp)
    80002aac:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80002ab0:	0000b797          	auipc	a5,0xb
    80002ab4:	6f07b783          	ld	a5,1776(a5) # 8000e1a0 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80002ab8:	00000513          	li	a0,0
    while(curr != 0)
    80002abc:	00078863          	beqz	a5,80002acc <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80002ac0:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80002ac4:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002ac8:	ff5ff06f          	j	80002abc <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80002acc:	0005051b          	sext.w	a0,a0
    80002ad0:	00813403          	ld	s0,8(sp)
    80002ad4:	01010113          	addi	sp,sp,16
    80002ad8:	00008067          	ret

0000000080002adc <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80002adc:	ff010113          	addi	sp,sp,-16
    80002ae0:	00813423          	sd	s0,8(sp)
    80002ae4:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80002ae8:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    80002aec:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    80002af0:	0000b797          	auipc	a5,0xb
    80002af4:	6b07b783          	ld	a5,1712(a5) # 8000e1a0 <_ZN9Scheduler16schedulerPCBHeadE>
    80002af8:	02078263          	beqz	a5,80002b1c <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80002afc:	0000b797          	auipc	a5,0xb
    80002b00:	6a478793          	addi	a5,a5,1700 # 8000e1a0 <_ZN9Scheduler16schedulerPCBHeadE>
    80002b04:	0087b703          	ld	a4,8(a5)
    80002b08:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    80002b0c:	00a7b423          	sd	a0,8(a5)
    }
}
    80002b10:	00813403          	ld	s0,8(sp)
    80002b14:	01010113          	addi	sp,sp,16
    80002b18:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80002b1c:	0000b797          	auipc	a5,0xb
    80002b20:	68478793          	addi	a5,a5,1668 # 8000e1a0 <_ZN9Scheduler16schedulerPCBHeadE>
    80002b24:	00a7b423          	sd	a0,8(a5)
    80002b28:	00a7b023          	sd	a0,0(a5)
    80002b2c:	fe5ff06f          	j	80002b10 <_ZN9Scheduler3putEP3PCB+0x34>

0000000080002b30 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    80002b30:	ff010113          	addi	sp,sp,-16
    80002b34:	00813423          	sd	s0,8(sp)
    80002b38:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    80002b3c:	0000b517          	auipc	a0,0xb
    80002b40:	66453503          	ld	a0,1636(a0) # 8000e1a0 <_ZN9Scheduler16schedulerPCBHeadE>
    80002b44:	00050c63          	beqz	a0,80002b5c <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80002b48:	00853783          	ld	a5,8(a0)
    80002b4c:	00078e63          	beqz	a5,80002b68 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80002b50:	0000b717          	auipc	a4,0xb
    80002b54:	64f73823          	sd	a5,1616(a4) # 8000e1a0 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80002b58:	00053423          	sd	zero,8(a0)
    return retval;
}
    80002b5c:	00813403          	ld	s0,8(sp)
    80002b60:	01010113          	addi	sp,sp,16
    80002b64:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80002b68:	0000b797          	auipc	a5,0xb
    80002b6c:	63878793          	addi	a5,a5,1592 # 8000e1a0 <_ZN9Scheduler16schedulerPCBHeadE>
    80002b70:	0007b423          	sd	zero,8(a5)
    80002b74:	0007b023          	sd	zero,0(a5)
    80002b78:	fe1ff06f          	j	80002b58 <_ZN9Scheduler3getEv+0x28>

0000000080002b7c <_ZN9Scheduler5printEv>:

void Scheduler::print()
{
    80002b7c:	fe010113          	addi	sp,sp,-32
    80002b80:	00113c23          	sd	ra,24(sp)
    80002b84:	00813823          	sd	s0,16(sp)
    80002b88:	00913423          	sd	s1,8(sp)
    80002b8c:	02010413          	addi	s0,sp,32
    //trapPrintString("Scheduler print\n");
    PCB* curr = schedulerPCBHead;
    80002b90:	0000b497          	auipc	s1,0xb
    80002b94:	6104b483          	ld	s1,1552(s1) # 8000e1a0 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80002b98:	02048863          	beqz	s1,80002bc8 <_ZN9Scheduler5printEv+0x4c>
    {
        KConsole::trapPrintInt((uint64)curr, 16);
    80002b9c:	00000613          	li	a2,0
    80002ba0:	01000593          	li	a1,16
    80002ba4:	0004851b          	sext.w	a0,s1
    80002ba8:	00000097          	auipc	ra,0x0
    80002bac:	cdc080e7          	jalr	-804(ra) # 80002884 <_ZN8KConsole12trapPrintIntEiii>
        KConsole::trapPrintString("\n");
    80002bb0:	00006517          	auipc	a0,0x6
    80002bb4:	89850513          	addi	a0,a0,-1896 # 80008448 <CONSOLE_STATUS+0x438>
    80002bb8:	00000097          	auipc	ra,0x0
    80002bbc:	c88080e7          	jalr	-888(ra) # 80002840 <_ZN8KConsole15trapPrintStringEPKc>
        curr = curr->nextPCB;
    80002bc0:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80002bc4:	fd5ff06f          	j	80002b98 <_ZN9Scheduler5printEv+0x1c>
    }
}
    80002bc8:	01813083          	ld	ra,24(sp)
    80002bcc:	01013403          	ld	s0,16(sp)
    80002bd0:	00813483          	ld	s1,8(sp)
    80002bd4:	02010113          	addi	sp,sp,32
    80002bd8:	00008067          	ret

0000000080002bdc <main>:
#include "../h/Riscv.hpp"

void main()
{
    80002bdc:	ff010113          	addi	sp,sp,-16
    80002be0:	00113423          	sd	ra,8(sp)
    80002be4:	00813023          	sd	s0,0(sp)
    80002be8:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    80002bec:	00000097          	auipc	ra,0x0
    80002bf0:	664080e7          	jalr	1636(ra) # 80003250 <_ZN5Riscv10kernelMainEv>
    80002bf4:	00813083          	ld	ra,8(sp)
    80002bf8:	00013403          	ld	s0,0(sp)
    80002bfc:	01010113          	addi	sp,sp,16
    80002c00:	00008067          	ret

0000000080002c04 <_ZN6Thread6runnerEPv>:
    myHandle = 0;
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    80002c04:	ff010113          	addi	sp,sp,-16
    80002c08:	00113423          	sd	ra,8(sp)
    80002c0c:	00813023          	sd	s0,0(sp)
    80002c10:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    80002c14:	00053783          	ld	a5,0(a0)
    80002c18:	0107b783          	ld	a5,16(a5)
    80002c1c:	000780e7          	jalr	a5
}
    80002c20:	00813083          	ld	ra,8(sp)
    80002c24:	00013403          	ld	s0,0(sp)
    80002c28:	01010113          	addi	sp,sp,16
    80002c2c:	00008067          	ret

0000000080002c30 <_ZN6ThreadD1Ev>:

Thread::~Thread()
    80002c30:	00007797          	auipc	a5,0x7
    80002c34:	3d878793          	addi	a5,a5,984 # 8000a008 <_ZTV6Thread+0x10>
    80002c38:	00f53023          	sd	a5,0(a0)
{
    delete myHandle;
    80002c3c:	00853503          	ld	a0,8(a0)
    80002c40:	02050663          	beqz	a0,80002c6c <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread()
    80002c44:	ff010113          	addi	sp,sp,-16
    80002c48:	00113423          	sd	ra,8(sp)
    80002c4c:	00813023          	sd	s0,0(sp)
    80002c50:	01010413          	addi	s0,sp,16
    delete myHandle;
    80002c54:	fffff097          	auipc	ra,0xfffff
    80002c58:	a6c080e7          	jalr	-1428(ra) # 800016c0 <_ZN7_threaddlEPv>
}
    80002c5c:	00813083          	ld	ra,8(sp)
    80002c60:	00013403          	ld	s0,0(sp)
    80002c64:	01010113          	addi	sp,sp,16
    80002c68:	00008067          	ret
    80002c6c:	00008067          	ret

0000000080002c70 <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    80002c70:	00007797          	auipc	a5,0x7
    80002c74:	3c078793          	addi	a5,a5,960 # 8000a030 <_ZTV9Semaphore+0x10>
    80002c78:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    80002c7c:	00853503          	ld	a0,8(a0)
    80002c80:	02050663          	beqz	a0,80002cac <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80002c84:	ff010113          	addi	sp,sp,-16
    80002c88:	00113423          	sd	ra,8(sp)
    80002c8c:	00813023          	sd	s0,0(sp)
    80002c90:	01010413          	addi	s0,sp,16
    delete myHandle;
    80002c94:	00000097          	auipc	ra,0x0
    80002c98:	464080e7          	jalr	1124(ra) # 800030f8 <_ZN4_semdlEPv>
}
    80002c9c:	00813083          	ld	ra,8(sp)
    80002ca0:	00013403          	ld	s0,0(sp)
    80002ca4:	01010113          	addi	sp,sp,16
    80002ca8:	00008067          	ret
    80002cac:	00008067          	ret

0000000080002cb0 <_Znwm>:
{
    80002cb0:	ff010113          	addi	sp,sp,-16
    80002cb4:	00113423          	sd	ra,8(sp)
    80002cb8:	00813023          	sd	s0,0(sp)
    80002cbc:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002cc0:	ffffe097          	auipc	ra,0xffffe
    80002cc4:	6a8080e7          	jalr	1704(ra) # 80001368 <_Z9mem_allocm>
}
    80002cc8:	00813083          	ld	ra,8(sp)
    80002ccc:	00013403          	ld	s0,0(sp)
    80002cd0:	01010113          	addi	sp,sp,16
    80002cd4:	00008067          	ret

0000000080002cd8 <_ZdlPv>:
{
    80002cd8:	ff010113          	addi	sp,sp,-16
    80002cdc:	00113423          	sd	ra,8(sp)
    80002ce0:	00813023          	sd	s0,0(sp)
    80002ce4:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002ce8:	ffffe097          	auipc	ra,0xffffe
    80002cec:	6b0080e7          	jalr	1712(ra) # 80001398 <_Z8mem_freePv>
}
    80002cf0:	00813083          	ld	ra,8(sp)
    80002cf4:	00013403          	ld	s0,0(sp)
    80002cf8:	01010113          	addi	sp,sp,16
    80002cfc:	00008067          	ret

0000000080002d00 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    80002d00:	fe010113          	addi	sp,sp,-32
    80002d04:	00113c23          	sd	ra,24(sp)
    80002d08:	00813823          	sd	s0,16(sp)
    80002d0c:	00913423          	sd	s1,8(sp)
    80002d10:	02010413          	addi	s0,sp,32
    80002d14:	00050493          	mv	s1,a0
}
    80002d18:	00000097          	auipc	ra,0x0
    80002d1c:	f18080e7          	jalr	-232(ra) # 80002c30 <_ZN6ThreadD1Ev>
    80002d20:	00048513          	mv	a0,s1
    80002d24:	00000097          	auipc	ra,0x0
    80002d28:	fb4080e7          	jalr	-76(ra) # 80002cd8 <_ZdlPv>
    80002d2c:	01813083          	ld	ra,24(sp)
    80002d30:	01013403          	ld	s0,16(sp)
    80002d34:	00813483          	ld	s1,8(sp)
    80002d38:	02010113          	addi	sp,sp,32
    80002d3c:	00008067          	ret

0000000080002d40 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002d40:	fe010113          	addi	sp,sp,-32
    80002d44:	00113c23          	sd	ra,24(sp)
    80002d48:	00813823          	sd	s0,16(sp)
    80002d4c:	00913423          	sd	s1,8(sp)
    80002d50:	02010413          	addi	s0,sp,32
    80002d54:	00050493          	mv	s1,a0
}
    80002d58:	00000097          	auipc	ra,0x0
    80002d5c:	f18080e7          	jalr	-232(ra) # 80002c70 <_ZN9SemaphoreD1Ev>
    80002d60:	00048513          	mv	a0,s1
    80002d64:	00000097          	auipc	ra,0x0
    80002d68:	f74080e7          	jalr	-140(ra) # 80002cd8 <_ZdlPv>
    80002d6c:	01813083          	ld	ra,24(sp)
    80002d70:	01013403          	ld	s0,16(sp)
    80002d74:	00813483          	ld	s1,8(sp)
    80002d78:	02010113          	addi	sp,sp,32
    80002d7c:	00008067          	ret

0000000080002d80 <_ZN6Thread5startEv>:
    if(myHandle != 0)
    80002d80:	00853503          	ld	a0,8(a0)
    80002d84:	02050663          	beqz	a0,80002db0 <_ZN6Thread5startEv+0x30>
{
    80002d88:	ff010113          	addi	sp,sp,-16
    80002d8c:	00113423          	sd	ra,8(sp)
    80002d90:	00813023          	sd	s0,0(sp)
    80002d94:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    80002d98:	ffffe097          	auipc	ra,0xffffe
    80002d9c:	7dc080e7          	jalr	2012(ra) # 80001574 <_Z12thread_startPv>
}
    80002da0:	00813083          	ld	ra,8(sp)
    80002da4:	00013403          	ld	s0,0(sp)
    80002da8:	01010113          	addi	sp,sp,16
    80002dac:	00008067          	ret
        return -1;
    80002db0:	fff00513          	li	a0,-1
}
    80002db4:	00008067          	ret

0000000080002db8 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002db8:	ff010113          	addi	sp,sp,-16
    80002dbc:	00113423          	sd	ra,8(sp)
    80002dc0:	00813023          	sd	s0,0(sp)
    80002dc4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002dc8:	ffffe097          	auipc	ra,0xffffe
    80002dcc:	67c080e7          	jalr	1660(ra) # 80001444 <_Z15thread_dispatchv>
}
    80002dd0:	00813083          	ld	ra,8(sp)
    80002dd4:	00013403          	ld	s0,0(sp)
    80002dd8:	01010113          	addi	sp,sp,16
    80002ddc:	00008067          	ret

0000000080002de0 <_ZN6Thread5sleepEm>:
{
    80002de0:	ff010113          	addi	sp,sp,-16
    80002de4:	00113423          	sd	ra,8(sp)
    80002de8:	00813023          	sd	s0,0(sp)
    80002dec:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80002df0:	ffffe097          	auipc	ra,0xffffe
    80002df4:	758080e7          	jalr	1880(ra) # 80001548 <_Z10time_sleepm>
}
    80002df8:	00813083          	ld	ra,8(sp)
    80002dfc:	00013403          	ld	s0,0(sp)
    80002e00:	01010113          	addi	sp,sp,16
    80002e04:	00008067          	ret

0000000080002e08 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    80002e08:	fe010113          	addi	sp,sp,-32
    80002e0c:	00113c23          	sd	ra,24(sp)
    80002e10:	00813823          	sd	s0,16(sp)
    80002e14:	00913423          	sd	s1,8(sp)
    80002e18:	01213023          	sd	s2,0(sp)
    80002e1c:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    80002e20:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    80002e24:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    80002e28:	0004b783          	ld	a5,0(s1)
    80002e2c:	0187b783          	ld	a5,24(a5)
    80002e30:	00048513          	mv	a0,s1
    80002e34:	000780e7          	jalr	a5
        Thread::sleep(time);
    80002e38:	00090513          	mv	a0,s2
    80002e3c:	00000097          	auipc	ra,0x0
    80002e40:	fa4080e7          	jalr	-92(ra) # 80002de0 <_ZN6Thread5sleepEm>
    while(true)
    80002e44:	fe5ff06f          	j	80002e28 <_ZN14PeriodicThread6runnerEPv+0x20>

0000000080002e48 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    80002e48:	ff010113          	addi	sp,sp,-16
    80002e4c:	00113423          	sd	ra,8(sp)
    80002e50:	00813023          	sd	s0,0(sp)
    80002e54:	01010413          	addi	s0,sp,16
    80002e58:	00007797          	auipc	a5,0x7
    80002e5c:	1b078793          	addi	a5,a5,432 # 8000a008 <_ZTV6Thread+0x10>
    80002e60:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80002e64:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, body, args);
    80002e68:	00850513          	addi	a0,a0,8
    80002e6c:	ffffe097          	auipc	ra,0xffffe
    80002e70:	734080e7          	jalr	1844(ra) # 800015a0 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    80002e74:	00813083          	ld	ra,8(sp)
    80002e78:	00013403          	ld	s0,0(sp)
    80002e7c:	01010113          	addi	sp,sp,16
    80002e80:	00008067          	ret

0000000080002e84 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80002e84:	ff010113          	addi	sp,sp,-16
    80002e88:	00113423          	sd	ra,8(sp)
    80002e8c:	00813023          	sd	s0,0(sp)
    80002e90:	01010413          	addi	s0,sp,16
    80002e94:	00007797          	auipc	a5,0x7
    80002e98:	17478793          	addi	a5,a5,372 # 8000a008 <_ZTV6Thread+0x10>
    80002e9c:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80002ea0:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    80002ea4:	00050613          	mv	a2,a0
    80002ea8:	00000597          	auipc	a1,0x0
    80002eac:	d5c58593          	addi	a1,a1,-676 # 80002c04 <_ZN6Thread6runnerEPv>
    80002eb0:	00850513          	addi	a0,a0,8
    80002eb4:	ffffe097          	auipc	ra,0xffffe
    80002eb8:	6ec080e7          	jalr	1772(ra) # 800015a0 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    80002ebc:	00813083          	ld	ra,8(sp)
    80002ec0:	00013403          	ld	s0,0(sp)
    80002ec4:	01010113          	addi	sp,sp,16
    80002ec8:	00008067          	ret

0000000080002ecc <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    80002ecc:	00853503          	ld	a0,8(a0)
    80002ed0:	02050663          	beqz	a0,80002efc <_ZN9Semaphore4waitEv+0x30>
{
    80002ed4:	ff010113          	addi	sp,sp,-16
    80002ed8:	00113423          	sd	ra,8(sp)
    80002edc:	00813023          	sd	s0,0(sp)
    80002ee0:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002ee4:	ffffe097          	auipc	ra,0xffffe
    80002ee8:	60c080e7          	jalr	1548(ra) # 800014f0 <_Z8sem_waitP4_sem>
}
    80002eec:	00813083          	ld	ra,8(sp)
    80002ef0:	00013403          	ld	s0,0(sp)
    80002ef4:	01010113          	addi	sp,sp,16
    80002ef8:	00008067          	ret
        return -1;
    80002efc:	fff00513          	li	a0,-1
}
    80002f00:	00008067          	ret

0000000080002f04 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    80002f04:	fe010113          	addi	sp,sp,-32
    80002f08:	00113c23          	sd	ra,24(sp)
    80002f0c:	00813823          	sd	s0,16(sp)
    80002f10:	00913423          	sd	s1,8(sp)
    80002f14:	02010413          	addi	s0,sp,32
    80002f18:	00050493          	mv	s1,a0
    80002f1c:	00007797          	auipc	a5,0x7
    80002f20:	11478793          	addi	a5,a5,276 # 8000a030 <_ZTV9Semaphore+0x10>
    80002f24:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    80002f28:	00850513          	addi	a0,a0,8
    80002f2c:	ffffe097          	auipc	ra,0xffffe
    80002f30:	560080e7          	jalr	1376(ra) # 8000148c <_Z8sem_openPP4_semj>
    if(retval != 0)
    80002f34:	00050463          	beqz	a0,80002f3c <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    80002f38:	0004b423          	sd	zero,8(s1)
}
    80002f3c:	01813083          	ld	ra,24(sp)
    80002f40:	01013403          	ld	s0,16(sp)
    80002f44:	00813483          	ld	s1,8(sp)
    80002f48:	02010113          	addi	sp,sp,32
    80002f4c:	00008067          	ret

0000000080002f50 <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    80002f50:	00853503          	ld	a0,8(a0)
    80002f54:	02050663          	beqz	a0,80002f80 <_ZN9Semaphore6signalEv+0x30>
{
    80002f58:	ff010113          	addi	sp,sp,-16
    80002f5c:	00113423          	sd	ra,8(sp)
    80002f60:	00813023          	sd	s0,0(sp)
    80002f64:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002f68:	ffffe097          	auipc	ra,0xffffe
    80002f6c:	5b4080e7          	jalr	1460(ra) # 8000151c <_Z10sem_signalP4_sem>
}
    80002f70:	00813083          	ld	ra,8(sp)
    80002f74:	00013403          	ld	s0,0(sp)
    80002f78:	01010113          	addi	sp,sp,16
    80002f7c:	00008067          	ret
        return -1;
    80002f80:	fff00513          	li	a0,-1
}
    80002f84:	00008067          	ret

0000000080002f88 <_ZN7Console4getcEv>:
{
    80002f88:	ff010113          	addi	sp,sp,-16
    80002f8c:	00113423          	sd	ra,8(sp)
    80002f90:	00813023          	sd	s0,0(sp)
    80002f94:	01010413          	addi	s0,sp,16
    return ::getc();
    80002f98:	ffffe097          	auipc	ra,0xffffe
    80002f9c:	688080e7          	jalr	1672(ra) # 80001620 <_Z4getcv>
}
    80002fa0:	00813083          	ld	ra,8(sp)
    80002fa4:	00013403          	ld	s0,0(sp)
    80002fa8:	01010113          	addi	sp,sp,16
    80002fac:	00008067          	ret

0000000080002fb0 <_ZN7Console4putcEc>:
{
    80002fb0:	ff010113          	addi	sp,sp,-16
    80002fb4:	00113423          	sd	ra,8(sp)
    80002fb8:	00813023          	sd	s0,0(sp)
    80002fbc:	01010413          	addi	s0,sp,16
    return ::putc(c);
    80002fc0:	ffffe097          	auipc	ra,0xffffe
    80002fc4:	688080e7          	jalr	1672(ra) # 80001648 <_Z4putcc>
}
    80002fc8:	00813083          	ld	ra,8(sp)
    80002fcc:	00013403          	ld	s0,0(sp)
    80002fd0:	01010113          	addi	sp,sp,16
    80002fd4:	00008067          	ret

0000000080002fd8 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80002fd8:	fe010113          	addi	sp,sp,-32
    80002fdc:	00113c23          	sd	ra,24(sp)
    80002fe0:	00813823          	sd	s0,16(sp)
    80002fe4:	00913423          	sd	s1,8(sp)
    80002fe8:	01213023          	sd	s2,0(sp)
    80002fec:	02010413          	addi	s0,sp,32
    80002ff0:	00050493          	mv	s1,a0
    80002ff4:	00058913          	mv	s2,a1
    80002ff8:	01000513          	li	a0,16
    80002ffc:	00000097          	auipc	ra,0x0
    80003000:	cb4080e7          	jalr	-844(ra) # 80002cb0 <_Znwm>
    80003004:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    80003008:	00953023          	sd	s1,0(a0)
    8000300c:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80003010:	00000597          	auipc	a1,0x0
    80003014:	df858593          	addi	a1,a1,-520 # 80002e08 <_ZN14PeriodicThread6runnerEPv>
    80003018:	00048513          	mv	a0,s1
    8000301c:	00000097          	auipc	ra,0x0
    80003020:	e2c080e7          	jalr	-468(ra) # 80002e48 <_ZN6ThreadC1EPFvPvES0_>
    80003024:	00007797          	auipc	a5,0x7
    80003028:	fb478793          	addi	a5,a5,-76 # 80009fd8 <_ZTV14PeriodicThread+0x10>
    8000302c:	00f4b023          	sd	a5,0(s1)
}
    80003030:	01813083          	ld	ra,24(sp)
    80003034:	01013403          	ld	s0,16(sp)
    80003038:	00813483          	ld	s1,8(sp)
    8000303c:	00013903          	ld	s2,0(sp)
    80003040:	02010113          	addi	sp,sp,32
    80003044:	00008067          	ret

0000000080003048 <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80003048:	ff010113          	addi	sp,sp,-16
    8000304c:	00813423          	sd	s0,8(sp)
    80003050:	01010413          	addi	s0,sp,16
    80003054:	00813403          	ld	s0,8(sp)
    80003058:	01010113          	addi	sp,sp,16
    8000305c:	00008067          	ret

0000000080003060 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    80003060:	ff010113          	addi	sp,sp,-16
    80003064:	00813423          	sd	s0,8(sp)
    80003068:	01010413          	addi	s0,sp,16
    8000306c:	00813403          	ld	s0,8(sp)
    80003070:	01010113          	addi	sp,sp,16
    80003074:	00008067          	ret

0000000080003078 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    80003078:	ff010113          	addi	sp,sp,-16
    8000307c:	00113423          	sd	ra,8(sp)
    80003080:	00813023          	sd	s0,0(sp)
    80003084:	01010413          	addi	s0,sp,16
    80003088:	00007797          	auipc	a5,0x7
    8000308c:	f5078793          	addi	a5,a5,-176 # 80009fd8 <_ZTV14PeriodicThread+0x10>
    80003090:	00f53023          	sd	a5,0(a0)
    80003094:	00000097          	auipc	ra,0x0
    80003098:	b9c080e7          	jalr	-1124(ra) # 80002c30 <_ZN6ThreadD1Ev>
    8000309c:	00813083          	ld	ra,8(sp)
    800030a0:	00013403          	ld	s0,0(sp)
    800030a4:	01010113          	addi	sp,sp,16
    800030a8:	00008067          	ret

00000000800030ac <_ZN14PeriodicThreadD0Ev>:
    800030ac:	fe010113          	addi	sp,sp,-32
    800030b0:	00113c23          	sd	ra,24(sp)
    800030b4:	00813823          	sd	s0,16(sp)
    800030b8:	00913423          	sd	s1,8(sp)
    800030bc:	02010413          	addi	s0,sp,32
    800030c0:	00050493          	mv	s1,a0
    800030c4:	00007797          	auipc	a5,0x7
    800030c8:	f1478793          	addi	a5,a5,-236 # 80009fd8 <_ZTV14PeriodicThread+0x10>
    800030cc:	00f53023          	sd	a5,0(a0)
    800030d0:	00000097          	auipc	ra,0x0
    800030d4:	b60080e7          	jalr	-1184(ra) # 80002c30 <_ZN6ThreadD1Ev>
    800030d8:	00048513          	mv	a0,s1
    800030dc:	00000097          	auipc	ra,0x0
    800030e0:	bfc080e7          	jalr	-1028(ra) # 80002cd8 <_ZdlPv>
    800030e4:	01813083          	ld	ra,24(sp)
    800030e8:	01013403          	ld	s0,16(sp)
    800030ec:	00813483          	ld	s1,8(sp)
    800030f0:	02010113          	addi	sp,sp,32
    800030f4:	00008067          	ret

00000000800030f8 <_ZN4_semdlEPv>:
//

#include "../h/_sem.hpp"
#include "../h/syscall_c.hpp"

void _sem::operator delete(void *p) {
    800030f8:	ff010113          	addi	sp,sp,-16
    800030fc:	00113423          	sd	ra,8(sp)
    80003100:	00813023          	sd	s0,0(sp)
    80003104:	01010413          	addi	s0,sp,16
    sem_close((sem_t)p);
    80003108:	ffffe097          	auipc	ra,0xffffe
    8000310c:	3bc080e7          	jalr	956(ra) # 800014c4 <_Z9sem_closeP4_sem>
}
    80003110:	00813083          	ld	ra,8(sp)
    80003114:	00013403          	ld	s0,0(sp)
    80003118:	01010113          	addi	sp,sp,16
    8000311c:	00008067          	ret

0000000080003120 <_ZN5Riscv10initSystemEv>:
uint64 Riscv::totalTime = 0;
bool Riscv::finishSystem = false;
bool Riscv::kernelMainCalled = false;

void Riscv::initSystem()
{
    80003120:	ff010113          	addi	sp,sp,-16
    80003124:	00113423          	sd	ra,8(sp)
    80003128:	00813023          	sd	s0,0(sp)
    8000312c:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80003130:	00007797          	auipc	a5,0x7
    80003134:	f487b783          	ld	a5,-184(a5) # 8000a078 <_GLOBAL_OFFSET_TABLE_+0x20>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80003138:	10579073          	csrw	stvec,a5
    PCB::initialize();
    8000313c:	ffffe097          	auipc	ra,0xffffe
    80003140:	770080e7          	jalr	1904(ra) # 800018ac <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80003144:	fffff097          	auipc	ra,0xfffff
    80003148:	250080e7          	jalr	592(ra) # 80002394 <_ZN8KConsole10initializeEv>
}
    8000314c:	00813083          	ld	ra,8(sp)
    80003150:	00013403          	ld	s0,0(sp)
    80003154:	01010113          	addi	sp,sp,16
    80003158:	00008067          	ret

000000008000315c <_ZN5Riscv16enableInterruptsEv>:
        thread_dispatch();
    }
    disableInterrupts();
}

void Riscv::enableInterrupts() {
    8000315c:	ff010113          	addi	sp,sp,-16
    80003160:	00813423          	sd	s0,8(sp)
    80003164:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003168:	00200793          	li	a5,2
    8000316c:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    80003170:	00813403          	ld	s0,8(sp)
    80003174:	01010113          	addi	sp,sp,16
    80003178:	00008067          	ret

000000008000317c <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    8000317c:	ff010113          	addi	sp,sp,-16
    80003180:	00813423          	sd	s0,8(sp)
    80003184:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003188:	00200793          	li	a5,2
    8000318c:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    80003190:	00813403          	ld	s0,8(sp)
    80003194:	01010113          	addi	sp,sp,16
    80003198:	00008067          	ret

000000008000319c <_ZN5Riscv9endSystemEv>:
{
    8000319c:	ff010113          	addi	sp,sp,-16
    800031a0:	00113423          	sd	ra,8(sp)
    800031a4:	00813023          	sd	s0,0(sp)
    800031a8:	01010413          	addi	s0,sp,16
    disableInterrupts();
    800031ac:	00000097          	auipc	ra,0x0
    800031b0:	fd0080e7          	jalr	-48(ra) # 8000317c <_ZN5Riscv17disableInterruptsEv>
    finishSystem = true;
    800031b4:	00100793          	li	a5,1
    800031b8:	0000b717          	auipc	a4,0xb
    800031bc:	fef70c23          	sb	a5,-8(a4) # 8000e1b0 <_ZN5Riscv12finishSystemE>
        pcb = Scheduler::get();
    800031c0:	00000097          	auipc	ra,0x0
    800031c4:	970080e7          	jalr	-1680(ra) # 80002b30 <_ZN9Scheduler3getEv>
        if(pcb == 0) break;
    800031c8:	fe051ce3          	bnez	a0,800031c0 <_ZN5Riscv9endSystemEv+0x24>
    Scheduler::put(PCB::consolePCB);
    800031cc:	00007797          	auipc	a5,0x7
    800031d0:	ee47b783          	ld	a5,-284(a5) # 8000a0b0 <_GLOBAL_OFFSET_TABLE_+0x58>
    800031d4:	0007b503          	ld	a0,0(a5)
    800031d8:	00000097          	auipc	ra,0x0
    800031dc:	904080e7          	jalr	-1788(ra) # 80002adc <_ZN9Scheduler3putEP3PCB>
    KConsole::pendingGetc = 0;
    800031e0:	00007797          	auipc	a5,0x7
    800031e4:	ea07b783          	ld	a5,-352(a5) # 8000a080 <_GLOBAL_OFFSET_TABLE_+0x28>
    800031e8:	0007b023          	sd	zero,0(a5)
    enableInterrupts();
    800031ec:	00000097          	auipc	ra,0x0
    800031f0:	f70080e7          	jalr	-144(ra) # 8000315c <_ZN5Riscv16enableInterruptsEv>
    while(!PCB::consolePCB->isFinished())
    800031f4:	00007797          	auipc	a5,0x7
    800031f8:	ebc7b783          	ld	a5,-324(a5) # 8000a0b0 <_GLOBAL_OFFSET_TABLE_+0x58>
    800031fc:	0007b503          	ld	a0,0(a5)
    80003200:	ffffe097          	auipc	ra,0xffffe
    80003204:	7cc080e7          	jalr	1996(ra) # 800019cc <_ZN3PCB10isFinishedEv>
    80003208:	00051863          	bnez	a0,80003218 <_ZN5Riscv9endSystemEv+0x7c>
        thread_dispatch();
    8000320c:	ffffe097          	auipc	ra,0xffffe
    80003210:	238080e7          	jalr	568(ra) # 80001444 <_Z15thread_dispatchv>
    while(!PCB::consolePCB->isFinished())
    80003214:	fe1ff06f          	j	800031f4 <_ZN5Riscv9endSystemEv+0x58>
    disableInterrupts();
    80003218:	00000097          	auipc	ra,0x0
    8000321c:	f64080e7          	jalr	-156(ra) # 8000317c <_ZN5Riscv17disableInterruptsEv>
}
    80003220:	00813083          	ld	ra,8(sp)
    80003224:	00013403          	ld	s0,0(sp)
    80003228:	01010113          	addi	sp,sp,16
    8000322c:	00008067          	ret

0000000080003230 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    80003230:	ff010113          	addi	sp,sp,-16
    80003234:	00813423          	sd	s0,8(sp)
    80003238:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    8000323c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80003240:	10200073          	sret
}
    80003244:	00813403          	ld	s0,8(sp)
    80003248:	01010113          	addi	sp,sp,16
    8000324c:	00008067          	ret

0000000080003250 <_ZN5Riscv10kernelMainEv>:
    }
}

void Riscv::kernelMain()
{
    if(kernelMainCalled) return;
    80003250:	0000b797          	auipc	a5,0xb
    80003254:	f617c783          	lbu	a5,-159(a5) # 8000e1b1 <_ZN5Riscv16kernelMainCalledE>
    80003258:	00078463          	beqz	a5,80003260 <_ZN5Riscv10kernelMainEv+0x10>
    8000325c:	00008067          	ret
{
    80003260:	ff010113          	addi	sp,sp,-16
    80003264:	00113423          	sd	ra,8(sp)
    80003268:	00813023          	sd	s0,0(sp)
    8000326c:	01010413          	addi	s0,sp,16
    kernelMainCalled = true;
    80003270:	00100793          	li	a5,1
    80003274:	0000b717          	auipc	a4,0xb
    80003278:	f2f70ea3          	sb	a5,-195(a4) # 8000e1b1 <_ZN5Riscv16kernelMainCalledE>

    initSystem();
    8000327c:	00000097          	auipc	ra,0x0
    80003280:	ea4080e7          	jalr	-348(ra) # 80003120 <_ZN5Riscv10initSystemEv>

    //disableTimerInterrupts();
    enableInterrupts();
    80003284:	00000097          	auipc	ra,0x0
    80003288:	ed8080e7          	jalr	-296(ra) # 8000315c <_ZN5Riscv16enableInterruptsEv>

    while(!PCB::userPCB->isFinished())
    8000328c:	00007797          	auipc	a5,0x7
    80003290:	e2c7b783          	ld	a5,-468(a5) # 8000a0b8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80003294:	0007b503          	ld	a0,0(a5)
    80003298:	ffffe097          	auipc	ra,0xffffe
    8000329c:	734080e7          	jalr	1844(ra) # 800019cc <_ZN3PCB10isFinishedEv>
    800032a0:	00051863          	bnez	a0,800032b0 <_ZN5Riscv10kernelMainEv+0x60>
    {
        thread_dispatch();
    800032a4:	ffffe097          	auipc	ra,0xffffe
    800032a8:	1a0080e7          	jalr	416(ra) # 80001444 <_Z15thread_dispatchv>
    while(!PCB::userPCB->isFinished())
    800032ac:	fe1ff06f          	j	8000328c <_ZN5Riscv10kernelMainEv+0x3c>
    }

    //printString("End...\n");
    endSystem();
    800032b0:	00000097          	auipc	ra,0x0
    800032b4:	eec080e7          	jalr	-276(ra) # 8000319c <_ZN5Riscv9endSystemEv>
}
    800032b8:	00813083          	ld	ra,8(sp)
    800032bc:	00013403          	ld	s0,0(sp)
    800032c0:	01010113          	addi	sp,sp,16
    800032c4:	00008067          	ret

00000000800032c8 <_ZN5Riscv15userMainWrapperEPv>:

void Riscv::userMainWrapper(void* )
{
    800032c8:	ff010113          	addi	sp,sp,-16
    800032cc:	00113423          	sd	ra,8(sp)
    800032d0:	00813023          	sd	s0,0(sp)
    800032d4:	01010413          	addi	s0,sp,16
    userMain();
    800032d8:	00002097          	auipc	ra,0x2
    800032dc:	930080e7          	jalr	-1744(ra) # 80004c08 <_Z8userMainv>
}
    800032e0:	00813083          	ld	ra,8(sp)
    800032e4:	00013403          	ld	s0,0(sp)
    800032e8:	01010113          	addi	sp,sp,16
    800032ec:	00008067          	ret

00000000800032f0 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    800032f0:	ff010113          	addi	sp,sp,-16
    800032f4:	00813423          	sd	s0,8(sp)
    800032f8:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    800032fc:	00200793          	li	a5,2
    80003300:	1047b073          	csrc	sie,a5
}
    80003304:	00813403          	ld	s0,8(sp)
    80003308:	01010113          	addi	sp,sp,16
    8000330c:	00008067          	ret

0000000080003310 <_ZN5Riscv13w_a0_sscratchEv>:

void Riscv::w_a0_sscratch()
{
    80003310:	ff010113          	addi	sp,sp,-16
    80003314:	00813423          	sd	s0,8(sp)
    80003318:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    8000331c:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80003320:	00007717          	auipc	a4,0x7
    80003324:	da873703          	ld	a4,-600(a4) # 8000a0c8 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003328:	00073703          	ld	a4,0(a4)
    8000332c:	01073703          	ld	a4,16(a4)
    80003330:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    80003334:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80003338:	00078593          	mv	a1,a5
}
    8000333c:	00813403          	ld	s0,8(sp)
    80003340:	01010113          	addi	sp,sp,16
    80003344:	00008067          	ret

0000000080003348 <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    80003348:	ff010113          	addi	sp,sp,-16
    8000334c:	00813423          	sd	s0,8(sp)
    80003350:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    80003354:	00007797          	auipc	a5,0x7
    80003358:	d747b783          	ld	a5,-652(a5) # 8000a0c8 <_GLOBAL_OFFSET_TABLE_+0x70>
    8000335c:	0007b783          	ld	a5,0(a5)
    80003360:	0007c783          	lbu	a5,0(a5)
    80003364:	00078c63          	beqz	a5,8000337c <_ZN5Riscv14changePrivModeEv+0x34>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003368:	10000793          	li	a5,256
    8000336c:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    80003370:	00813403          	ld	s0,8(sp)
    80003374:	01010113          	addi	sp,sp,16
    80003378:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    8000337c:	10000793          	li	a5,256
    80003380:	1007b073          	csrc	sstatus,a5
    80003384:	fedff06f          	j	80003370 <_ZN5Riscv14changePrivModeEv+0x28>

0000000080003388 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    80003388:	f9010113          	addi	sp,sp,-112
    8000338c:	06113423          	sd	ra,104(sp)
    80003390:	06813023          	sd	s0,96(sp)
    80003394:	04913c23          	sd	s1,88(sp)
    80003398:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    8000339c:	00070713          	mv	a4,a4
    800033a0:	00007797          	auipc	a5,0x7
    800033a4:	d407b783          	ld	a5,-704(a5) # 8000a0e0 <_GLOBAL_OFFSET_TABLE_+0x88>
    800033a8:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    800033ac:	00007797          	auipc	a5,0x7
    800033b0:	d1c7b783          	ld	a5,-740(a5) # 8000a0c8 <_GLOBAL_OFFSET_TABLE_+0x70>
    800033b4:	0007b783          	ld	a5,0(a5)
    800033b8:	14002773          	csrr	a4,sscratch
    800033bc:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    800033c0:	142027f3          	csrr	a5,scause
    800033c4:	faf43c23          	sd	a5,-72(s0)
    return scause;
    800033c8:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    800033cc:	00900713          	li	a4,9
    800033d0:	02f76e63          	bltu	a4,a5,8000340c <_ZN5Riscv20handleSupervisorTrapEv+0x84>
    800033d4:	00800713          	li	a4,8
    800033d8:	12e7f463          	bgeu	a5,a4,80003500 <_ZN5Riscv20handleSupervisorTrapEv+0x178>
    800033dc:	00500713          	li	a4,5
    800033e0:	10e78a63          	beq	a5,a4,800034f4 <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
    800033e4:	00700713          	li	a4,7
    800033e8:	00e79863          	bne	a5,a4,800033f8 <_ZN5Riscv20handleSupervisorTrapEv+0x70>
            PCB::threadExitHandler();
    800033ec:	ffffe097          	auipc	ra,0xffffe
    800033f0:	604080e7          	jalr	1540(ra) # 800019f0 <_ZN3PCB17threadExitHandlerEv>
            break;
    800033f4:	0dc0006f          	j	800034d0 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    switch(scause)
    800033f8:	00200713          	li	a4,2
    800033fc:	0ce79a63          	bne	a5,a4,800034d0 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            PCB::threadExitHandler();
    80003400:	ffffe097          	auipc	ra,0xffffe
    80003404:	5f0080e7          	jalr	1520(ra) # 800019f0 <_ZN3PCB17threadExitHandlerEv>
            break;
    80003408:	0c80006f          	j	800034d0 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    switch(scause)
    8000340c:	fff00713          	li	a4,-1
    80003410:	03f71713          	slli	a4,a4,0x3f
    80003414:	00170713          	addi	a4,a4,1
    80003418:	02e78863          	beq	a5,a4,80003448 <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
    8000341c:	fff00713          	li	a4,-1
    80003420:	03f71713          	slli	a4,a4,0x3f
    80003424:	00970713          	addi	a4,a4,9
    80003428:	0ae79463          	bne	a5,a4,800034d0 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            KConsole::getCharactersFromConsole();
    8000342c:	fffff097          	auipc	ra,0xfffff
    80003430:	080080e7          	jalr	128(ra) # 800024ac <_ZN8KConsole24getCharactersFromConsoleEv>
            plic_complete(plic_claim());
    80003434:	00002097          	auipc	ra,0x2
    80003438:	370080e7          	jalr	880(ra) # 800057a4 <plic_claim>
    8000343c:	00002097          	auipc	ra,0x2
    80003440:	3a0080e7          	jalr	928(ra) # 800057dc <plic_complete>
            break;
    80003444:	08c0006f          	j	800034d0 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003448:	141027f3          	csrr	a5,sepc
    8000344c:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80003450:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80003454:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003458:	100027f3          	csrr	a5,sstatus
    8000345c:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80003460:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003464:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003468:	00200793          	li	a5,2
    8000346c:	1447b073          	csrc	sip,a5
            totalTime++;
    80003470:	0000b717          	auipc	a4,0xb
    80003474:	d4070713          	addi	a4,a4,-704 # 8000e1b0 <_ZN5Riscv12finishSystemE>
    80003478:	00873783          	ld	a5,8(a4)
    8000347c:	00178793          	addi	a5,a5,1
    80003480:	00f73423          	sd	a5,8(a4)
            PCB::timeSliceCounter++;
    80003484:	00007497          	auipc	s1,0x7
    80003488:	c0c4b483          	ld	s1,-1012(s1) # 8000a090 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000348c:	0004b783          	ld	a5,0(s1)
    80003490:	00178793          	addi	a5,a5,1
    80003494:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80003498:	fffff097          	auipc	ra,0xfffff
    8000349c:	534080e7          	jalr	1332(ra) # 800029cc <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    800034a0:	00007797          	auipc	a5,0x7
    800034a4:	c287b783          	ld	a5,-984(a5) # 8000a0c8 <_GLOBAL_OFFSET_TABLE_+0x70>
    800034a8:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    800034ac:	0187b783          	ld	a5,24(a5)
    800034b0:	0004b703          	ld	a4,0(s1)
    800034b4:	02f77863          	bgeu	a4,a5,800034e4 <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
            Riscv::w_sstatus(sstatus);
    800034b8:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800034bc:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    800034c0:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800034c4:	14179073          	csrw	sepc,a5
            changePrivMode();
    800034c8:	00000097          	auipc	ra,0x0
    800034cc:	e80080e7          	jalr	-384(ra) # 80003348 <_ZN5Riscv14changePrivModeEv>
}
    800034d0:	06813083          	ld	ra,104(sp)
    800034d4:	06013403          	ld	s0,96(sp)
    800034d8:	05813483          	ld	s1,88(sp)
    800034dc:	07010113          	addi	sp,sp,112
    800034e0:	00008067          	ret
                PCB::timeSliceCounter = 0;
    800034e4:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    800034e8:	ffffe097          	auipc	ra,0xffffe
    800034ec:	2bc080e7          	jalr	700(ra) # 800017a4 <_ZN3PCB8dispatchEv>
    800034f0:	fc9ff06f          	j	800034b8 <_ZN5Riscv20handleSupervisorTrapEv+0x130>
            PCB::threadExitHandler();
    800034f4:	ffffe097          	auipc	ra,0xffffe
    800034f8:	4fc080e7          	jalr	1276(ra) # 800019f0 <_ZN3PCB17threadExitHandlerEv>
            break;
    800034fc:	fd5ff06f          	j	800034d0 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003500:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003504:	14102773          	csrr	a4,sepc
    80003508:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    8000350c:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80003510:	00470713          	addi	a4,a4,4
    80003514:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003518:	10002773          	csrr	a4,sstatus
    8000351c:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80003520:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003524:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80003528:	04300713          	li	a4,67
    8000352c:	02f76463          	bltu	a4,a5,80003554 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
    80003530:	00279793          	slli	a5,a5,0x2
    80003534:	00005717          	auipc	a4,0x5
    80003538:	be070713          	addi	a4,a4,-1056 # 80008114 <CONSOLE_STATUS+0x104>
    8000353c:	00e787b3          	add	a5,a5,a4
    80003540:	0007a783          	lw	a5,0(a5)
    80003544:	00e787b3          	add	a5,a5,a4
    80003548:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    8000354c:	00000097          	auipc	ra,0x0
    80003550:	55c080e7          	jalr	1372(ra) # 80003aa8 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80003554:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003558:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    8000355c:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003560:	14179073          	csrw	sepc,a5
            changePrivMode();
    80003564:	00000097          	auipc	ra,0x0
    80003568:	de4080e7          	jalr	-540(ra) # 80003348 <_ZN5Riscv14changePrivModeEv>
}
    8000356c:	f65ff06f          	j	800034d0 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
                    MemoryAllocator::memFreeHandler();
    80003570:	00000097          	auipc	ra,0x0
    80003574:	59c080e7          	jalr	1436(ra) # 80003b0c <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80003578:	fddff06f          	j	80003554 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadMakePCBHandler();
    8000357c:	ffffe097          	auipc	ra,0xffffe
    80003580:	638080e7          	jalr	1592(ra) # 80001bb4 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80003584:	fd1ff06f          	j	80003554 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadCreateHandler();
    80003588:	ffffe097          	auipc	ra,0xffffe
    8000358c:	548080e7          	jalr	1352(ra) # 80001ad0 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80003590:	fc5ff06f          	j	80003554 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadStartHandler();
    80003594:	ffffe097          	auipc	ra,0xffffe
    80003598:	5dc080e7          	jalr	1500(ra) # 80001b70 <_ZN3PCB18threadStartHandlerEv>
                    break;
    8000359c:	fb9ff06f          	j	80003554 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadDispatchHandler();
    800035a0:	ffffe097          	auipc	ra,0xffffe
    800035a4:	49c080e7          	jalr	1180(ra) # 80001a3c <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    800035a8:	fadff06f          	j	80003554 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadExitHandler();
    800035ac:	ffffe097          	auipc	ra,0xffffe
    800035b0:	444080e7          	jalr	1092(ra) # 800019f0 <_ZN3PCB17threadExitHandlerEv>
                    break;
    800035b4:	fa1ff06f          	j	80003554 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadSleepHandler();
    800035b8:	ffffe097          	auipc	ra,0xffffe
    800035bc:	4b4080e7          	jalr	1204(ra) # 80001a6c <_ZN3PCB18threadSleepHandlerEv>
                    break;
    800035c0:	f95ff06f          	j	80003554 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                     PCB::threadDelPCBHandler();
    800035c4:	ffffe097          	auipc	ra,0xffffe
    800035c8:	684080e7          	jalr	1668(ra) # 80001c48 <_ZN3PCB19threadDelPCBHandlerEv>
                     break;
    800035cc:	f89ff06f          	j	80003554 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semOpenHandler();
    800035d0:	00001097          	auipc	ra,0x1
    800035d4:	800080e7          	jalr	-2048(ra) # 80003dd0 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    800035d8:	f7dff06f          	j	80003554 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semWaitHandler();
    800035dc:	00001097          	auipc	ra,0x1
    800035e0:	894080e7          	jalr	-1900(ra) # 80003e70 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    800035e4:	f71ff06f          	j	80003554 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semSignalHandler();
    800035e8:	00001097          	auipc	ra,0x1
    800035ec:	8dc080e7          	jalr	-1828(ra) # 80003ec4 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    800035f0:	f65ff06f          	j	80003554 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semCloseHandler();
    800035f4:	00001097          	auipc	ra,0x1
    800035f8:	914080e7          	jalr	-1772(ra) # 80003f08 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    800035fc:	f59ff06f          	j	80003554 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::getcHandler();
    80003600:	fffff097          	auipc	ra,0xfffff
    80003604:	0b0080e7          	jalr	176(ra) # 800026b0 <_ZN8KConsole11getcHandlerEv>
                    break;
    80003608:	f4dff06f          	j	80003554 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::putcHandler();
    8000360c:	fffff097          	auipc	ra,0xfffff
    80003610:	074080e7          	jalr	116(ra) # 80002680 <_ZN8KConsole11putcHandlerEv>
                    break;
    80003614:	f41ff06f          	j	80003554 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::getCharHandler();
    80003618:	fffff097          	auipc	ra,0xfffff
    8000361c:	1f4080e7          	jalr	500(ra) # 8000280c <_ZN8KConsole14getCharHandlerEv>
                    break;
    80003620:	f35ff06f          	j	80003554 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>

0000000080003624 <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80003624:	ff010113          	addi	sp,sp,-16
    80003628:	00813423          	sd	s0,8(sp)
    8000362c:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80003630:	0000b717          	auipc	a4,0xb
    80003634:	b9072703          	lw	a4,-1136(a4) # 8000e1c0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003638:	00100793          	li	a5,1
    8000363c:	04f70263          	beq	a4,a5,80003680 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80003640:	0000b797          	auipc	a5,0xb
    80003644:	b8078793          	addi	a5,a5,-1152 # 8000e1c0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003648:	00100713          	li	a4,1
    8000364c:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80003650:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80003654:	00007717          	auipc	a4,0x7
    80003658:	a1c73703          	ld	a4,-1508(a4) # 8000a070 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000365c:	00073703          	ld	a4,0(a4)
    80003660:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80003664:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80003668:	00007797          	auipc	a5,0x7
    8000366c:	a687b783          	ld	a5,-1432(a5) # 8000a0d0 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003670:	0007b783          	ld	a5,0(a5)
    80003674:	40e787b3          	sub	a5,a5,a4
    80003678:	ff178793          	addi	a5,a5,-15
    8000367c:	00f73023          	sd	a5,0(a4)
}
    80003680:	00813403          	ld	s0,8(sp)
    80003684:	01010113          	addi	sp,sp,16
    80003688:	00008067          	ret

000000008000368c <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>:

void MemoryAllocator::insertAllFragment(void *addr, size_t size, void* nxtAddr)
{
    8000368c:	fd010113          	addi	sp,sp,-48
    80003690:	02113423          	sd	ra,40(sp)
    80003694:	02813023          	sd	s0,32(sp)
    80003698:	00913c23          	sd	s1,24(sp)
    8000369c:	01213823          	sd	s2,16(sp)
    800036a0:	01313423          	sd	s3,8(sp)
    800036a4:	03010413          	addi	s0,sp,48
    800036a8:	00050493          	mv	s1,a0
    800036ac:	00058993          	mv	s3,a1
    800036b0:	00060913          	mv	s2,a2
    initMemory();
    800036b4:	00000097          	auipc	ra,0x0
    800036b8:	f70080e7          	jalr	-144(ra) # 80003624 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    800036bc:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    800036c0:	0134b023          	sd	s3,0(s1)
    if(headAllocated == 0)
    800036c4:	0000b797          	auipc	a5,0xb
    800036c8:	b047b783          	ld	a5,-1276(a5) # 8000e1c8 <_ZN15MemoryAllocator13headAllocatedE>
    800036cc:	02078e63          	beqz	a5,80003708 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x7c>
    {
        headAllocated = newAllocated;
    }
    else if(nxtAddr <= HEAP_END_ADDR)
    800036d0:	00007717          	auipc	a4,0x7
    800036d4:	a0073703          	ld	a4,-1536(a4) # 8000a0d0 <_GLOBAL_OFFSET_TABLE_+0x78>
    800036d8:	00073703          	ld	a4,0(a4)
    800036dc:	03276c63          	bltu	a4,s2,80003714 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x88>
    {
        BlockHeader * allFrag = (BlockHeader*)nxtAddr;
        newAllocated->next = allFrag->next;
    800036e0:	00893783          	ld	a5,8(s2)
    800036e4:	00f4b423          	sd	a5,8(s1)
        allFrag->next = newAllocated;
    800036e8:	00993423          	sd	s1,8(s2)
    else
    {
        newAllocated->next = headAllocated;
        headAllocated = newAllocated;
    }
}
    800036ec:	02813083          	ld	ra,40(sp)
    800036f0:	02013403          	ld	s0,32(sp)
    800036f4:	01813483          	ld	s1,24(sp)
    800036f8:	01013903          	ld	s2,16(sp)
    800036fc:	00813983          	ld	s3,8(sp)
    80003700:	03010113          	addi	sp,sp,48
    80003704:	00008067          	ret
        headAllocated = newAllocated;
    80003708:	0000b797          	auipc	a5,0xb
    8000370c:	ac97b023          	sd	s1,-1344(a5) # 8000e1c8 <_ZN15MemoryAllocator13headAllocatedE>
    80003710:	fddff06f          	j	800036ec <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>
        newAllocated->next = headAllocated;
    80003714:	00f4b423          	sd	a5,8(s1)
        headAllocated = newAllocated;
    80003718:	0000b797          	auipc	a5,0xb
    8000371c:	aa97b823          	sd	s1,-1360(a5) # 8000e1c8 <_ZN15MemoryAllocator13headAllocatedE>
}
    80003720:	fcdff06f          	j	800036ec <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>

0000000080003724 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80003724:	fe010113          	addi	sp,sp,-32
    80003728:	00113c23          	sd	ra,24(sp)
    8000372c:	00813823          	sd	s0,16(sp)
    80003730:	00913423          	sd	s1,8(sp)
    80003734:	01213023          	sd	s2,0(sp)
    80003738:	02010413          	addi	s0,sp,32
    8000373c:	00050493          	mv	s1,a0
    80003740:	00058913          	mv	s2,a1
    initMemory();
    80003744:	00000097          	auipc	ra,0x0
    80003748:	ee0080e7          	jalr	-288(ra) # 80003624 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    8000374c:	0000b797          	auipc	a5,0xb
    80003750:	a7c7b783          	ld	a5,-1412(a5) # 8000e1c8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80003754:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80003758:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    8000375c:	00000713          	li	a4,0
    while(curr != 0)
    80003760:	00078c63          	beqz	a5,80003778 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003764:	00f4e863          	bltu	s1,a5,80003774 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80003768:	00078713          	mv	a4,a5
        curr = curr->next;
    8000376c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003770:	ff1ff06f          	j	80003760 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80003774:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003778:	02070063          	beqz	a4,80003798 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    8000377c:	00973423          	sd	s1,8(a4)
}
    80003780:	01813083          	ld	ra,24(sp)
    80003784:	01013403          	ld	s0,16(sp)
    80003788:	00813483          	ld	s1,8(sp)
    8000378c:	00013903          	ld	s2,0(sp)
    80003790:	02010113          	addi	sp,sp,32
    80003794:	00008067          	ret
        headAllocated = newAllocated;
    80003798:	0000b797          	auipc	a5,0xb
    8000379c:	a297b823          	sd	s1,-1488(a5) # 8000e1c8 <_ZN15MemoryAllocator13headAllocatedE>
    800037a0:	fe1ff06f          	j	80003780 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

00000000800037a4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    800037a4:	fe010113          	addi	sp,sp,-32
    800037a8:	00113c23          	sd	ra,24(sp)
    800037ac:	00813823          	sd	s0,16(sp)
    800037b0:	00913423          	sd	s1,8(sp)
    800037b4:	01213023          	sd	s2,0(sp)
    800037b8:	02010413          	addi	s0,sp,32
    800037bc:	00050913          	mv	s2,a0
    initMemory();
    800037c0:	00000097          	auipc	ra,0x0
    800037c4:	e64080e7          	jalr	-412(ra) # 80003624 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800037c8:	0000b497          	auipc	s1,0xb
    800037cc:	a084b483          	ld	s1,-1528(s1) # 8000e1d0 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    800037d0:	00000713          	li	a4,0
    while(curr != 0)
    800037d4:	0c048063          	beqz	s1,80003894 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf0>
    {
        if(curr->size >= size)
    800037d8:	0004b783          	ld	a5,0(s1)
    800037dc:	0127f863          	bgeu	a5,s2,800037ec <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            //insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    800037e0:	00048713          	mv	a4,s1
        curr = curr->next;
    800037e4:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800037e8:	fedff06f          	j	800037d4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    800037ec:	01090693          	addi	a3,s2,16
    800037f0:	00d486b3          	add	a3,s1,a3
            void* nxtAllFrag = ((char*)curr + curr->size + sizeof(BlockHeader));
    800037f4:	01078613          	addi	a2,a5,16
    800037f8:	00c48633          	add	a2,s1,a2
            if(newAddr <= HEAP_END_ADDR)
    800037fc:	00007597          	auipc	a1,0x7
    80003800:	8d45b583          	ld	a1,-1836(a1) # 8000a0d0 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003804:	0005b583          	ld	a1,0(a1)
    80003808:	06d5e063          	bltu	a1,a3,80003868 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc4>
                uint64 size2 = curr->size - size;
    8000380c:	412785b3          	sub	a1,a5,s2
                if(size2 > sizeof(BlockHeader))
    80003810:	01000513          	li	a0,16
    80003814:	02b57663          	bgeu	a0,a1,80003840 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                    newFree->next = curr->next;
    80003818:	0084b783          	ld	a5,8(s1)
    8000381c:	00f6b423          	sd	a5,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80003820:	ff058593          	addi	a1,a1,-16
    80003824:	00b6b023          	sd	a1,0(a3)
                    if (prev != 0)
    80003828:	00070663          	beqz	a4,80003834 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x90>
                        prev->next = newFree;
    8000382c:	00d73423          	sd	a3,8(a4)
    80003830:	0400006f          	j	80003870 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = newFree;
    80003834:	0000b797          	auipc	a5,0xb
    80003838:	98d7be23          	sd	a3,-1636(a5) # 8000e1d0 <_ZN15MemoryAllocator8headFreeE>
    8000383c:	0340006f          	j	80003870 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                    if(prev != 0)
    80003840:	00070a63          	beqz	a4,80003854 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb0>
                        prev->next = curr->next;
    80003844:	0084b683          	ld	a3,8(s1)
    80003848:	00d73423          	sd	a3,8(a4)
                    size+=size2;
    8000384c:	00078913          	mv	s2,a5
    80003850:	0200006f          	j	80003870 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = curr->next;
    80003854:	0084b703          	ld	a4,8(s1)
    80003858:	0000b697          	auipc	a3,0xb
    8000385c:	96e6bc23          	sd	a4,-1672(a3) # 8000e1d0 <_ZN15MemoryAllocator8headFreeE>
                    size+=size2;
    80003860:	00078913          	mv	s2,a5
    80003864:	00c0006f          	j	80003870 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                if(prev != 0)
    80003868:	02070063          	beqz	a4,80003888 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    prev->next = 0;
    8000386c:	00073423          	sd	zero,8(a4)
            insertAllFragment(oldAddr, size, nxtAllFrag);
    80003870:	00090593          	mv	a1,s2
    80003874:	00048513          	mv	a0,s1
    80003878:	00000097          	auipc	ra,0x0
    8000387c:	e14080e7          	jalr	-492(ra) # 8000368c <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80003880:	01048513          	addi	a0,s1,16
            break;
    80003884:	0140006f          	j	80003898 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf4>
                    headFree = 0;
    80003888:	0000b797          	auipc	a5,0xb
    8000388c:	9407b423          	sd	zero,-1720(a5) # 8000e1d0 <_ZN15MemoryAllocator8headFreeE>
    80003890:	fe1ff06f          	j	80003870 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
    uint64 retval = 0;
    80003894:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80003898:	01813083          	ld	ra,24(sp)
    8000389c:	01013403          	ld	s0,16(sp)
    800038a0:	00813483          	ld	s1,8(sp)
    800038a4:	00013903          	ld	s2,0(sp)
    800038a8:	02010113          	addi	sp,sp,32
    800038ac:	00008067          	ret

00000000800038b0 <_ZN15MemoryAllocator9mem_allocEm>:
{
    800038b0:	ff010113          	addi	sp,sp,-16
    800038b4:	00113423          	sd	ra,8(sp)
    800038b8:	00813023          	sd	s0,0(sp)
    800038bc:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    800038c0:	00000097          	auipc	ra,0x0
    800038c4:	ee4080e7          	jalr	-284(ra) # 800037a4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    800038c8:	00813083          	ld	ra,8(sp)
    800038cc:	00013403          	ld	s0,0(sp)
    800038d0:	01010113          	addi	sp,sp,16
    800038d4:	00008067          	ret

00000000800038d8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    800038d8:	fe010113          	addi	sp,sp,-32
    800038dc:	00113c23          	sd	ra,24(sp)
    800038e0:	00813823          	sd	s0,16(sp)
    800038e4:	00913423          	sd	s1,8(sp)
    800038e8:	01213023          	sd	s2,0(sp)
    800038ec:	02010413          	addi	s0,sp,32
    800038f0:	00050493          	mv	s1,a0
    800038f4:	00058913          	mv	s2,a1
    initMemory();
    800038f8:	00000097          	auipc	ra,0x0
    800038fc:	d2c080e7          	jalr	-724(ra) # 80003624 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003900:	0000b797          	auipc	a5,0xb
    80003904:	8d07b783          	ld	a5,-1840(a5) # 8000e1d0 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80003908:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    8000390c:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80003910:	00000713          	li	a4,0
    while(curr != 0)
    80003914:	00078c63          	beqz	a5,8000392c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003918:	00f4e863          	bltu	s1,a5,80003928 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    8000391c:	00078713          	mv	a4,a5
        curr = curr->next;
    80003920:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003924:	ff1ff06f          	j	80003914 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80003928:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    8000392c:	04070663          	beqz	a4,80003978 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80003930:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80003934:	0084b783          	ld	a5,8(s1)
    80003938:	00078a63          	beqz	a5,8000394c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    8000393c:	0004b603          	ld	a2,0(s1)
    80003940:	01060693          	addi	a3,a2,16
    80003944:	00d486b3          	add	a3,s1,a3
    80003948:	02d78e63          	beq	a5,a3,80003984 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    8000394c:	00070a63          	beqz	a4,80003960 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80003950:	00073683          	ld	a3,0(a4)
    80003954:	01068793          	addi	a5,a3,16
    80003958:	00f707b3          	add	a5,a4,a5
    8000395c:	04978263          	beq	a5,s1,800039a0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80003960:	01813083          	ld	ra,24(sp)
    80003964:	01013403          	ld	s0,16(sp)
    80003968:	00813483          	ld	s1,8(sp)
    8000396c:	00013903          	ld	s2,0(sp)
    80003970:	02010113          	addi	sp,sp,32
    80003974:	00008067          	ret
        headFree = newSegment;
    80003978:	0000b797          	auipc	a5,0xb
    8000397c:	8497bc23          	sd	s1,-1960(a5) # 8000e1d0 <_ZN15MemoryAllocator8headFreeE>
    80003980:	fb5ff06f          	j	80003934 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80003984:	0007b683          	ld	a3,0(a5)
    80003988:	00d60633          	add	a2,a2,a3
    8000398c:	01060613          	addi	a2,a2,16
    80003990:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80003994:	0087b783          	ld	a5,8(a5)
    80003998:	00f4b423          	sd	a5,8(s1)
    8000399c:	fb1ff06f          	j	8000394c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    800039a0:	0004b783          	ld	a5,0(s1)
    800039a4:	00f686b3          	add	a3,a3,a5
    800039a8:	01068693          	addi	a3,a3,16
    800039ac:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    800039b0:	0084b783          	ld	a5,8(s1)
    800039b4:	00f73423          	sd	a5,8(a4)
}
    800039b8:	fa9ff06f          	j	80003960 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

00000000800039bc <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    800039bc:	fe010113          	addi	sp,sp,-32
    800039c0:	00113c23          	sd	ra,24(sp)
    800039c4:	00813823          	sd	s0,16(sp)
    800039c8:	00913423          	sd	s1,8(sp)
    800039cc:	01213023          	sd	s2,0(sp)
    800039d0:	02010413          	addi	s0,sp,32
    800039d4:	00050913          	mv	s2,a0
    initMemory();
    800039d8:	00000097          	auipc	ra,0x0
    800039dc:	c4c080e7          	jalr	-948(ra) # 80003624 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    800039e0:	0000a497          	auipc	s1,0xa
    800039e4:	7e84b483          	ld	s1,2024(s1) # 8000e1c8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    800039e8:	00000713          	li	a4,0
    while(curr != 0)
    800039ec:	02048a63          	beqz	s1,80003a20 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    800039f0:	01048793          	addi	a5,s1,16
    800039f4:	01278863          	beq	a5,s2,80003a04 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    800039f8:	00048713          	mv	a4,s1
        curr = curr->next;
    800039fc:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003a00:	fedff06f          	j	800039ec <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    80003a04:	02070e63          	beqz	a4,80003a40 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    80003a08:	0084b783          	ld	a5,8(s1)
    80003a0c:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80003a10:	0004b583          	ld	a1,0(s1)
    80003a14:	00048513          	mv	a0,s1
    80003a18:	00000097          	auipc	ra,0x0
    80003a1c:	ec0080e7          	jalr	-320(ra) # 800038d8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80003a20:	02048863          	beqz	s1,80003a50 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80003a24:	00000513          	li	a0,0
    else
        return 1;
}
    80003a28:	01813083          	ld	ra,24(sp)
    80003a2c:	01013403          	ld	s0,16(sp)
    80003a30:	00813483          	ld	s1,8(sp)
    80003a34:	00013903          	ld	s2,0(sp)
    80003a38:	02010113          	addi	sp,sp,32
    80003a3c:	00008067          	ret
                headAllocated = curr->next;
    80003a40:	0084b783          	ld	a5,8(s1)
    80003a44:	0000a717          	auipc	a4,0xa
    80003a48:	78f73223          	sd	a5,1924(a4) # 8000e1c8 <_ZN15MemoryAllocator13headAllocatedE>
    80003a4c:	fc5ff06f          	j	80003a10 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80003a50:	00100513          	li	a0,1
    80003a54:	fd5ff06f          	j	80003a28 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080003a58 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80003a58:	ff010113          	addi	sp,sp,-16
    80003a5c:	00113423          	sd	ra,8(sp)
    80003a60:	00813023          	sd	s0,0(sp)
    80003a64:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80003a68:	00000097          	auipc	ra,0x0
    80003a6c:	f54080e7          	jalr	-172(ra) # 800039bc <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80003a70:	00813083          	ld	ra,8(sp)
    80003a74:	00013403          	ld	s0,0(sp)
    80003a78:	01010113          	addi	sp,sp,16
    80003a7c:	00008067          	ret

0000000080003a80 <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    80003a80:	ff010113          	addi	sp,sp,-16
    80003a84:	00113423          	sd	ra,8(sp)
    80003a88:	00813023          	sd	s0,0(sp)
    80003a8c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80003a90:	00000097          	auipc	ra,0x0
    80003a94:	e20080e7          	jalr	-480(ra) # 800038b0 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003a98:	00813083          	ld	ra,8(sp)
    80003a9c:	00013403          	ld	s0,0(sp)
    80003aa0:	01010113          	addi	sp,sp,16
    80003aa4:	00008067          	ret

0000000080003aa8 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80003aa8:	ff010113          	addi	sp,sp,-16
    80003aac:	00113423          	sd	ra,8(sp)
    80003ab0:	00813023          	sd	s0,0(sp)
    80003ab4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80003ab8:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    80003abc:	00651513          	slli	a0,a0,0x6
    80003ac0:	00000097          	auipc	ra,0x0
    80003ac4:	fc0080e7          	jalr	-64(ra) # 80003a80 <_ZN15MemoryAllocator7kmallocEm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80003ac8:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80003acc:	00000097          	auipc	ra,0x0
    80003ad0:	844080e7          	jalr	-1980(ra) # 80003310 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003ad4:	00813083          	ld	ra,8(sp)
    80003ad8:	00013403          	ld	s0,0(sp)
    80003adc:	01010113          	addi	sp,sp,16
    80003ae0:	00008067          	ret

0000000080003ae4 <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    80003ae4:	ff010113          	addi	sp,sp,-16
    80003ae8:	00113423          	sd	ra,8(sp)
    80003aec:	00813023          	sd	s0,0(sp)
    80003af0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80003af4:	00000097          	auipc	ra,0x0
    80003af8:	f64080e7          	jalr	-156(ra) # 80003a58 <_ZN15MemoryAllocator8mem_freeEPv>
    80003afc:	00813083          	ld	ra,8(sp)
    80003b00:	00013403          	ld	s0,0(sp)
    80003b04:	01010113          	addi	sp,sp,16
    80003b08:	00008067          	ret

0000000080003b0c <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    80003b0c:	ff010113          	addi	sp,sp,-16
    80003b10:	00113423          	sd	ra,8(sp)
    80003b14:	00813023          	sd	s0,0(sp)
    80003b18:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    80003b1c:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80003b20:	00000097          	auipc	ra,0x0
    80003b24:	fc4080e7          	jalr	-60(ra) # 80003ae4 <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80003b28:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80003b2c:	fffff097          	auipc	ra,0xfffff
    80003b30:	7e4080e7          	jalr	2020(ra) # 80003310 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003b34:	00813083          	ld	ra,8(sp)
    80003b38:	00013403          	ld	s0,0(sp)
    80003b3c:	01010113          	addi	sp,sp,16
    80003b40:	00008067          	ret

0000000080003b44 <_ZN10KSemaphoreC1Ei>:
#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
    80003b44:	ff010113          	addi	sp,sp,-16
    80003b48:	00813423          	sd	s0,8(sp)
    80003b4c:	01010413          	addi	s0,sp,16
{
    this->val = val;
    80003b50:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80003b54:	00053423          	sd	zero,8(a0)
    80003b58:	00053023          	sd	zero,0(a0)
}
    80003b5c:	00813403          	ld	s0,8(sp)
    80003b60:	01010113          	addi	sp,sp,16
    80003b64:	00008067          	ret

0000000080003b68 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80003b68:	ff010113          	addi	sp,sp,-16
    80003b6c:	00813423          	sd	s0,8(sp)
    80003b70:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80003b74:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80003b78:	00053783          	ld	a5,0(a0)
    80003b7c:	00078e63          	beqz	a5,80003b98 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80003b80:	00853783          	ld	a5,8(a0)
    80003b84:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80003b88:	00b53423          	sd	a1,8(a0)
    }
}
    80003b8c:	00813403          	ld	s0,8(sp)
    80003b90:	01010113          	addi	sp,sp,16
    80003b94:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80003b98:	00b53423          	sd	a1,8(a0)
    80003b9c:	00b53023          	sd	a1,0(a0)
    80003ba0:	fedff06f          	j	80003b8c <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080003ba4 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    80003ba4:	ff010113          	addi	sp,sp,-16
    80003ba8:	00113423          	sd	ra,8(sp)
    80003bac:	00813023          	sd	s0,0(sp)
    80003bb0:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80003bb4:	00006797          	auipc	a5,0x6
    80003bb8:	5147b783          	ld	a5,1300(a5) # 8000a0c8 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003bbc:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80003bc0:	00200793          	li	a5,2
    80003bc4:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    80003bc8:	00000097          	auipc	ra,0x0
    80003bcc:	fa0080e7          	jalr	-96(ra) # 80003b68 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80003bd0:	ffffe097          	auipc	ra,0xffffe
    80003bd4:	bd4080e7          	jalr	-1068(ra) # 800017a4 <_ZN3PCB8dispatchEv>
}
    80003bd8:	00813083          	ld	ra,8(sp)
    80003bdc:	00013403          	ld	s0,0(sp)
    80003be0:	01010113          	addi	sp,sp,16
    80003be4:	00008067          	ret

0000000080003be8 <_ZN10KSemaphore4waitEv>:
    PCB::running->retFromClosedSem = false;
    80003be8:	00006797          	auipc	a5,0x6
    80003bec:	4e07b783          	ld	a5,1248(a5) # 8000a0c8 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003bf0:	0007b783          	ld	a5,0(a5)
    80003bf4:	04078c23          	sb	zero,88(a5)
    if(--val < 0)
    80003bf8:	01052783          	lw	a5,16(a0)
    80003bfc:	fff7879b          	addiw	a5,a5,-1
    80003c00:	00f52823          	sw	a5,16(a0)
    80003c04:	02079713          	slli	a4,a5,0x20
    80003c08:	00074663          	bltz	a4,80003c14 <_ZN10KSemaphore4waitEv+0x2c>
}
    80003c0c:	00000513          	li	a0,0
    80003c10:	00008067          	ret
{
    80003c14:	ff010113          	addi	sp,sp,-16
    80003c18:	00113423          	sd	ra,8(sp)
    80003c1c:	00813023          	sd	s0,0(sp)
    80003c20:	01010413          	addi	s0,sp,16
        block();
    80003c24:	00000097          	auipc	ra,0x0
    80003c28:	f80080e7          	jalr	-128(ra) # 80003ba4 <_ZN10KSemaphore5blockEv>
}
    80003c2c:	00000513          	li	a0,0
    80003c30:	00813083          	ld	ra,8(sp)
    80003c34:	00013403          	ld	s0,0(sp)
    80003c38:	01010113          	addi	sp,sp,16
    80003c3c:	00008067          	ret

0000000080003c40 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80003c40:	ff010113          	addi	sp,sp,-16
    80003c44:	00813423          	sd	s0,8(sp)
    80003c48:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80003c4c:	00053503          	ld	a0,0(a0)
    80003c50:	00813403          	ld	s0,8(sp)
    80003c54:	01010113          	addi	sp,sp,16
    80003c58:	00008067          	ret

0000000080003c5c <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80003c5c:	ff010113          	addi	sp,sp,-16
    80003c60:	00813423          	sd	s0,8(sp)
    80003c64:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80003c68:	00053783          	ld	a5,0(a0)
    80003c6c:	00078c63          	beqz	a5,80003c84 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80003c70:	0087b703          	ld	a4,8(a5)
    80003c74:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80003c78:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80003c7c:	00053783          	ld	a5,0(a0)
    80003c80:	00078863          	beqz	a5,80003c90 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80003c84:	00813403          	ld	s0,8(sp)
    80003c88:	01010113          	addi	sp,sp,16
    80003c8c:	00008067          	ret
        tailBlocked =0;
    80003c90:	00053423          	sd	zero,8(a0)
    80003c94:	ff1ff06f          	j	80003c84 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080003c98 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80003c98:	fe010113          	addi	sp,sp,-32
    80003c9c:	00113c23          	sd	ra,24(sp)
    80003ca0:	00813823          	sd	s0,16(sp)
    80003ca4:	00913423          	sd	s1,8(sp)
    80003ca8:	01213023          	sd	s2,0(sp)
    80003cac:	02010413          	addi	s0,sp,32
    80003cb0:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80003cb4:	00090513          	mv	a0,s2
    80003cb8:	00000097          	auipc	ra,0x0
    80003cbc:	f88080e7          	jalr	-120(ra) # 80003c40 <_ZN10KSemaphore15getFirstBlockedEv>
    80003cc0:	00050493          	mv	s1,a0
    80003cc4:	02050463          	beqz	a0,80003cec <_ZN10KSemaphoreD1Ev+0x54>
        removeFirstBlocked();
    80003cc8:	00090513          	mv	a0,s2
    80003ccc:	00000097          	auipc	ra,0x0
    80003cd0:	f90080e7          	jalr	-112(ra) # 80003c5c <_ZN10KSemaphore18removeFirstBlockedEv>
        pcb->retFromClosedSem = true;
    80003cd4:	00100793          	li	a5,1
    80003cd8:	04f48c23          	sb	a5,88(s1)
        Scheduler::put(pcb);
    80003cdc:	00048513          	mv	a0,s1
    80003ce0:	fffff097          	auipc	ra,0xfffff
    80003ce4:	dfc080e7          	jalr	-516(ra) # 80002adc <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80003ce8:	fcdff06f          	j	80003cb4 <_ZN10KSemaphoreD1Ev+0x1c>
}
    80003cec:	01813083          	ld	ra,24(sp)
    80003cf0:	01013403          	ld	s0,16(sp)
    80003cf4:	00813483          	ld	s1,8(sp)
    80003cf8:	00013903          	ld	s2,0(sp)
    80003cfc:	02010113          	addi	sp,sp,32
    80003d00:	00008067          	ret

0000000080003d04 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    80003d04:	fe010113          	addi	sp,sp,-32
    80003d08:	00113c23          	sd	ra,24(sp)
    80003d0c:	00813823          	sd	s0,16(sp)
    80003d10:	00913423          	sd	s1,8(sp)
    80003d14:	01213023          	sd	s2,0(sp)
    80003d18:	02010413          	addi	s0,sp,32
    80003d1c:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80003d20:	00000097          	auipc	ra,0x0
    80003d24:	f20080e7          	jalr	-224(ra) # 80003c40 <_ZN10KSemaphore15getFirstBlockedEv>
    80003d28:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80003d2c:	00090513          	mv	a0,s2
    80003d30:	00000097          	auipc	ra,0x0
    80003d34:	f2c080e7          	jalr	-212(ra) # 80003c5c <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80003d38:	00048863          	beqz	s1,80003d48 <_ZN10KSemaphore7unblockEv+0x44>
    {
        Scheduler::put(fr);
    80003d3c:	00048513          	mv	a0,s1
    80003d40:	fffff097          	auipc	ra,0xfffff
    80003d44:	d9c080e7          	jalr	-612(ra) # 80002adc <_ZN9Scheduler3putEP3PCB>
    }
}
    80003d48:	01813083          	ld	ra,24(sp)
    80003d4c:	01013403          	ld	s0,16(sp)
    80003d50:	00813483          	ld	s1,8(sp)
    80003d54:	00013903          	ld	s2,0(sp)
    80003d58:	02010113          	addi	sp,sp,32
    80003d5c:	00008067          	ret

0000000080003d60 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80003d60:	01052783          	lw	a5,16(a0)
    80003d64:	0017879b          	addiw	a5,a5,1
    80003d68:	0007871b          	sext.w	a4,a5
    80003d6c:	00f52823          	sw	a5,16(a0)
    80003d70:	00e05663          	blez	a4,80003d7c <_ZN10KSemaphore6signalEv+0x1c>
}
    80003d74:	00000513          	li	a0,0
    80003d78:	00008067          	ret
uint64 KSemaphore::signal() {
    80003d7c:	ff010113          	addi	sp,sp,-16
    80003d80:	00113423          	sd	ra,8(sp)
    80003d84:	00813023          	sd	s0,0(sp)
    80003d88:	01010413          	addi	s0,sp,16
        unblock();
    80003d8c:	00000097          	auipc	ra,0x0
    80003d90:	f78080e7          	jalr	-136(ra) # 80003d04 <_ZN10KSemaphore7unblockEv>
}
    80003d94:	00000513          	li	a0,0
    80003d98:	00813083          	ld	ra,8(sp)
    80003d9c:	00013403          	ld	s0,0(sp)
    80003da0:	01010113          	addi	sp,sp,16
    80003da4:	00008067          	ret

0000000080003da8 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    80003da8:	ff010113          	addi	sp,sp,-16
    80003dac:	00113423          	sd	ra,8(sp)
    80003db0:	00813023          	sd	s0,0(sp)
    80003db4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80003db8:	00000097          	auipc	ra,0x0
    80003dbc:	cc8080e7          	jalr	-824(ra) # 80003a80 <_ZN15MemoryAllocator7kmallocEm>
}
    80003dc0:	00813083          	ld	ra,8(sp)
    80003dc4:	00013403          	ld	s0,0(sp)
    80003dc8:	01010113          	addi	sp,sp,16
    80003dcc:	00008067          	ret

0000000080003dd0 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    80003dd0:	fd010113          	addi	sp,sp,-48
    80003dd4:	02113423          	sd	ra,40(sp)
    80003dd8:	02813023          	sd	s0,32(sp)
    80003ddc:	00913c23          	sd	s1,24(sp)
    80003de0:	01213823          	sd	s2,16(sp)
    80003de4:	01313423          	sd	s3,8(sp)
    80003de8:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80003dec:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    80003df0:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    80003df4:	01800513          	li	a0,24
    80003df8:	00000097          	auipc	ra,0x0
    80003dfc:	fb0080e7          	jalr	-80(ra) # 80003da8 <_ZN10KSemaphorenwEm>
    80003e00:	00050493          	mv	s1,a0
    80003e04:	0009859b          	sext.w	a1,s3
    80003e08:	00000097          	auipc	ra,0x0
    80003e0c:	d3c080e7          	jalr	-708(ra) # 80003b44 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    80003e10:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    80003e14:	02048663          	beqz	s1,80003e40 <_ZN10KSemaphore14semOpenHandlerEv+0x70>
            __asm__ volatile("li a0, 0");
    80003e18:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80003e1c:	fffff097          	auipc	ra,0xfffff
    80003e20:	4f4080e7          	jalr	1268(ra) # 80003310 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003e24:	02813083          	ld	ra,40(sp)
    80003e28:	02013403          	ld	s0,32(sp)
    80003e2c:	01813483          	ld	s1,24(sp)
    80003e30:	01013903          	ld	s2,16(sp)
    80003e34:	00813983          	ld	s3,8(sp)
    80003e38:	03010113          	addi	sp,sp,48
    80003e3c:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80003e40:	fff00513          	li	a0,-1
    80003e44:	fd9ff06f          	j	80003e1c <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

0000000080003e48 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    80003e48:	ff010113          	addi	sp,sp,-16
    80003e4c:	00113423          	sd	ra,8(sp)
    80003e50:	00813023          	sd	s0,0(sp)
    80003e54:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80003e58:	00000097          	auipc	ra,0x0
    80003e5c:	c8c080e7          	jalr	-884(ra) # 80003ae4 <_ZN15MemoryAllocator5kfreeEPv>
}
    80003e60:	00813083          	ld	ra,8(sp)
    80003e64:	00013403          	ld	s0,0(sp)
    80003e68:	01010113          	addi	sp,sp,16
    80003e6c:	00008067          	ret

0000000080003e70 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    80003e70:	ff010113          	addi	sp,sp,-16
    80003e74:	00113423          	sd	ra,8(sp)
    80003e78:	00813023          	sd	s0,0(sp)
    80003e7c:	01010413          	addi	s0,sp,16
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80003e80:	00058513          	mv	a0,a1
    kSem->wait();
    80003e84:	00000097          	auipc	ra,0x0
    80003e88:	d64080e7          	jalr	-668(ra) # 80003be8 <_ZN10KSemaphore4waitEv>
    if(PCB::running->retFromClosedSem)
    80003e8c:	00006797          	auipc	a5,0x6
    80003e90:	23c7b783          	ld	a5,572(a5) # 8000a0c8 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003e94:	0007b783          	ld	a5,0(a5)
    80003e98:	0587c783          	lbu	a5,88(a5)
    80003e9c:	02078063          	beqz	a5,80003ebc <_ZN10KSemaphore14semWaitHandlerEv+0x4c>
        __asm__ volatile("li a0, 0x1");
    80003ea0:	00100513          	li	a0,1
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
    80003ea4:	fffff097          	auipc	ra,0xfffff
    80003ea8:	46c080e7          	jalr	1132(ra) # 80003310 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003eac:	00813083          	ld	ra,8(sp)
    80003eb0:	00013403          	ld	s0,0(sp)
    80003eb4:	01010113          	addi	sp,sp,16
    80003eb8:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    80003ebc:	00000513          	li	a0,0
    80003ec0:	fe5ff06f          	j	80003ea4 <_ZN10KSemaphore14semWaitHandlerEv+0x34>

0000000080003ec4 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler() {
    80003ec4:	ff010113          	addi	sp,sp,-16
    80003ec8:	00113423          	sd	ra,8(sp)
    80003ecc:	00813023          	sd	s0,0(sp)
    80003ed0:	01010413          	addi	s0,sp,16
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80003ed4:	00058513          	mv	a0,a1
    if (kSem == 0)
    80003ed8:	02050463          	beqz	a0,80003f00 <_ZN10KSemaphore16semSignalHandlerEv+0x3c>
    {
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        kSem->signal();
    80003edc:	00000097          	auipc	ra,0x0
    80003ee0:	e84080e7          	jalr	-380(ra) # 80003d60 <_ZN10KSemaphore6signalEv>
        __asm__ volatile("li a0, 0x0");
    80003ee4:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80003ee8:	fffff097          	auipc	ra,0xfffff
    80003eec:	428080e7          	jalr	1064(ra) # 80003310 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003ef0:	00813083          	ld	ra,8(sp)
    80003ef4:	00013403          	ld	s0,0(sp)
    80003ef8:	01010113          	addi	sp,sp,16
    80003efc:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80003f00:	00100513          	li	a0,1
    80003f04:	fe5ff06f          	j	80003ee8 <_ZN10KSemaphore16semSignalHandlerEv+0x24>

0000000080003f08 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    80003f08:	fe010113          	addi	sp,sp,-32
    80003f0c:	00113c23          	sd	ra,24(sp)
    80003f10:	00813823          	sd	s0,16(sp)
    80003f14:	00913423          	sd	s1,8(sp)
    80003f18:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80003f1c:	00058493          	mv	s1,a1
    delete kSem;
    80003f20:	00048e63          	beqz	s1,80003f3c <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    80003f24:	00048513          	mv	a0,s1
    80003f28:	00000097          	auipc	ra,0x0
    80003f2c:	d70080e7          	jalr	-656(ra) # 80003c98 <_ZN10KSemaphoreD1Ev>
    80003f30:	00048513          	mv	a0,s1
    80003f34:	00000097          	auipc	ra,0x0
    80003f38:	f14080e7          	jalr	-236(ra) # 80003e48 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    80003f3c:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80003f40:	fffff097          	auipc	ra,0xfffff
    80003f44:	3d0080e7          	jalr	976(ra) # 80003310 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003f48:	01813083          	ld	ra,24(sp)
    80003f4c:	01013403          	ld	s0,16(sp)
    80003f50:	00813483          	ld	s1,8(sp)
    80003f54:	02010113          	addi	sp,sp,32
    80003f58:	00008067          	ret

0000000080003f5c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80003f5c:	fe010113          	addi	sp,sp,-32
    80003f60:	00113c23          	sd	ra,24(sp)
    80003f64:	00813823          	sd	s0,16(sp)
    80003f68:	00913423          	sd	s1,8(sp)
    80003f6c:	02010413          	addi	s0,sp,32
    80003f70:	00050493          	mv	s1,a0
    LOCK();
    80003f74:	00100613          	li	a2,1
    80003f78:	00000593          	li	a1,0
    80003f7c:	0000a517          	auipc	a0,0xa
    80003f80:	25c50513          	addi	a0,a0,604 # 8000e1d8 <lockPrint>
    80003f84:	ffffd097          	auipc	ra,0xffffd
    80003f88:	294080e7          	jalr	660(ra) # 80001218 <copy_and_swap>
    80003f8c:	fe0514e3          	bnez	a0,80003f74 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80003f90:	0004c503          	lbu	a0,0(s1)
    80003f94:	00050a63          	beqz	a0,80003fa8 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80003f98:	ffffd097          	auipc	ra,0xffffd
    80003f9c:	6b0080e7          	jalr	1712(ra) # 80001648 <_Z4putcc>
        string++;
    80003fa0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003fa4:	fedff06f          	j	80003f90 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80003fa8:	00000613          	li	a2,0
    80003fac:	00100593          	li	a1,1
    80003fb0:	0000a517          	auipc	a0,0xa
    80003fb4:	22850513          	addi	a0,a0,552 # 8000e1d8 <lockPrint>
    80003fb8:	ffffd097          	auipc	ra,0xffffd
    80003fbc:	260080e7          	jalr	608(ra) # 80001218 <copy_and_swap>
    80003fc0:	fe0514e3          	bnez	a0,80003fa8 <_Z11printStringPKc+0x4c>
}
    80003fc4:	01813083          	ld	ra,24(sp)
    80003fc8:	01013403          	ld	s0,16(sp)
    80003fcc:	00813483          	ld	s1,8(sp)
    80003fd0:	02010113          	addi	sp,sp,32
    80003fd4:	00008067          	ret

0000000080003fd8 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80003fd8:	fd010113          	addi	sp,sp,-48
    80003fdc:	02113423          	sd	ra,40(sp)
    80003fe0:	02813023          	sd	s0,32(sp)
    80003fe4:	00913c23          	sd	s1,24(sp)
    80003fe8:	01213823          	sd	s2,16(sp)
    80003fec:	01313423          	sd	s3,8(sp)
    80003ff0:	01413023          	sd	s4,0(sp)
    80003ff4:	03010413          	addi	s0,sp,48
    80003ff8:	00050993          	mv	s3,a0
    80003ffc:	00058a13          	mv	s4,a1
    LOCK();
    80004000:	00100613          	li	a2,1
    80004004:	00000593          	li	a1,0
    80004008:	0000a517          	auipc	a0,0xa
    8000400c:	1d050513          	addi	a0,a0,464 # 8000e1d8 <lockPrint>
    80004010:	ffffd097          	auipc	ra,0xffffd
    80004014:	208080e7          	jalr	520(ra) # 80001218 <copy_and_swap>
    80004018:	fe0514e3          	bnez	a0,80004000 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    8000401c:	00000913          	li	s2,0
    80004020:	00090493          	mv	s1,s2
    80004024:	0019091b          	addiw	s2,s2,1
    80004028:	03495a63          	bge	s2,s4,8000405c <_Z9getStringPci+0x84>
        cc = getc();
    8000402c:	ffffd097          	auipc	ra,0xffffd
    80004030:	5f4080e7          	jalr	1524(ra) # 80001620 <_Z4getcv>
        if(cc < 1)
    80004034:	02050463          	beqz	a0,8000405c <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80004038:	009984b3          	add	s1,s3,s1
    8000403c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004040:	00a00793          	li	a5,10
    80004044:	00f50a63          	beq	a0,a5,80004058 <_Z9getStringPci+0x80>
    80004048:	00d00793          	li	a5,13
    8000404c:	fcf51ae3          	bne	a0,a5,80004020 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80004050:	00090493          	mv	s1,s2
    80004054:	0080006f          	j	8000405c <_Z9getStringPci+0x84>
    80004058:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    8000405c:	009984b3          	add	s1,s3,s1
    80004060:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004064:	00000613          	li	a2,0
    80004068:	00100593          	li	a1,1
    8000406c:	0000a517          	auipc	a0,0xa
    80004070:	16c50513          	addi	a0,a0,364 # 8000e1d8 <lockPrint>
    80004074:	ffffd097          	auipc	ra,0xffffd
    80004078:	1a4080e7          	jalr	420(ra) # 80001218 <copy_and_swap>
    8000407c:	fe0514e3          	bnez	a0,80004064 <_Z9getStringPci+0x8c>
    return buf;
}
    80004080:	00098513          	mv	a0,s3
    80004084:	02813083          	ld	ra,40(sp)
    80004088:	02013403          	ld	s0,32(sp)
    8000408c:	01813483          	ld	s1,24(sp)
    80004090:	01013903          	ld	s2,16(sp)
    80004094:	00813983          	ld	s3,8(sp)
    80004098:	00013a03          	ld	s4,0(sp)
    8000409c:	03010113          	addi	sp,sp,48
    800040a0:	00008067          	ret

00000000800040a4 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800040a4:	ff010113          	addi	sp,sp,-16
    800040a8:	00813423          	sd	s0,8(sp)
    800040ac:	01010413          	addi	s0,sp,16
    800040b0:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800040b4:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800040b8:	0006c603          	lbu	a2,0(a3)
    800040bc:	fd06071b          	addiw	a4,a2,-48
    800040c0:	0ff77713          	andi	a4,a4,255
    800040c4:	00900793          	li	a5,9
    800040c8:	02e7e063          	bltu	a5,a4,800040e8 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800040cc:	0025179b          	slliw	a5,a0,0x2
    800040d0:	00a787bb          	addw	a5,a5,a0
    800040d4:	0017979b          	slliw	a5,a5,0x1
    800040d8:	00168693          	addi	a3,a3,1
    800040dc:	00c787bb          	addw	a5,a5,a2
    800040e0:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800040e4:	fd5ff06f          	j	800040b8 <_Z11stringToIntPKc+0x14>
    return n;
}
    800040e8:	00813403          	ld	s0,8(sp)
    800040ec:	01010113          	addi	sp,sp,16
    800040f0:	00008067          	ret

00000000800040f4 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800040f4:	fc010113          	addi	sp,sp,-64
    800040f8:	02113c23          	sd	ra,56(sp)
    800040fc:	02813823          	sd	s0,48(sp)
    80004100:	02913423          	sd	s1,40(sp)
    80004104:	03213023          	sd	s2,32(sp)
    80004108:	01313c23          	sd	s3,24(sp)
    8000410c:	04010413          	addi	s0,sp,64
    80004110:	00050493          	mv	s1,a0
    80004114:	00058913          	mv	s2,a1
    80004118:	00060993          	mv	s3,a2
    LOCK();
    8000411c:	00100613          	li	a2,1
    80004120:	00000593          	li	a1,0
    80004124:	0000a517          	auipc	a0,0xa
    80004128:	0b450513          	addi	a0,a0,180 # 8000e1d8 <lockPrint>
    8000412c:	ffffd097          	auipc	ra,0xffffd
    80004130:	0ec080e7          	jalr	236(ra) # 80001218 <copy_and_swap>
    80004134:	fe0514e3          	bnez	a0,8000411c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004138:	00098463          	beqz	s3,80004140 <_Z8printIntiii+0x4c>
    8000413c:	0804c463          	bltz	s1,800041c4 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004140:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004144:	00000593          	li	a1,0
    }

    i = 0;
    80004148:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    8000414c:	0009079b          	sext.w	a5,s2
    80004150:	0325773b          	remuw	a4,a0,s2
    80004154:	00048613          	mv	a2,s1
    80004158:	0014849b          	addiw	s1,s1,1
    8000415c:	02071693          	slli	a3,a4,0x20
    80004160:	0206d693          	srli	a3,a3,0x20
    80004164:	00006717          	auipc	a4,0x6
    80004168:	edc70713          	addi	a4,a4,-292 # 8000a040 <digits>
    8000416c:	00d70733          	add	a4,a4,a3
    80004170:	00074683          	lbu	a3,0(a4)
    80004174:	fd040713          	addi	a4,s0,-48
    80004178:	00c70733          	add	a4,a4,a2
    8000417c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004180:	0005071b          	sext.w	a4,a0
    80004184:	0325553b          	divuw	a0,a0,s2
    80004188:	fcf772e3          	bgeu	a4,a5,8000414c <_Z8printIntiii+0x58>
    if(neg)
    8000418c:	00058c63          	beqz	a1,800041a4 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80004190:	fd040793          	addi	a5,s0,-48
    80004194:	009784b3          	add	s1,a5,s1
    80004198:	02d00793          	li	a5,45
    8000419c:	fef48823          	sb	a5,-16(s1)
    800041a0:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800041a4:	fff4849b          	addiw	s1,s1,-1
    800041a8:	0204c463          	bltz	s1,800041d0 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    800041ac:	fd040793          	addi	a5,s0,-48
    800041b0:	009787b3          	add	a5,a5,s1
    800041b4:	ff07c503          	lbu	a0,-16(a5)
    800041b8:	ffffd097          	auipc	ra,0xffffd
    800041bc:	490080e7          	jalr	1168(ra) # 80001648 <_Z4putcc>
    800041c0:	fe5ff06f          	j	800041a4 <_Z8printIntiii+0xb0>
        x = -xx;
    800041c4:	4090053b          	negw	a0,s1
        neg = 1;
    800041c8:	00100593          	li	a1,1
        x = -xx;
    800041cc:	f7dff06f          	j	80004148 <_Z8printIntiii+0x54>

    UNLOCK();
    800041d0:	00000613          	li	a2,0
    800041d4:	00100593          	li	a1,1
    800041d8:	0000a517          	auipc	a0,0xa
    800041dc:	00050513          	mv	a0,a0
    800041e0:	ffffd097          	auipc	ra,0xffffd
    800041e4:	038080e7          	jalr	56(ra) # 80001218 <copy_and_swap>
    800041e8:	fe0514e3          	bnez	a0,800041d0 <_Z8printIntiii+0xdc>
}
    800041ec:	03813083          	ld	ra,56(sp)
    800041f0:	03013403          	ld	s0,48(sp)
    800041f4:	02813483          	ld	s1,40(sp)
    800041f8:	02013903          	ld	s2,32(sp)
    800041fc:	01813983          	ld	s3,24(sp)
    80004200:	04010113          	addi	sp,sp,64
    80004204:	00008067          	ret

0000000080004208 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004208:	fd010113          	addi	sp,sp,-48
    8000420c:	02113423          	sd	ra,40(sp)
    80004210:	02813023          	sd	s0,32(sp)
    80004214:	00913c23          	sd	s1,24(sp)
    80004218:	01213823          	sd	s2,16(sp)
    8000421c:	01313423          	sd	s3,8(sp)
    80004220:	03010413          	addi	s0,sp,48
    80004224:	00050493          	mv	s1,a0
    80004228:	00058913          	mv	s2,a1
    8000422c:	0015879b          	addiw	a5,a1,1
    80004230:	0007851b          	sext.w	a0,a5
    80004234:	00f4a023          	sw	a5,0(s1)
    80004238:	0004a823          	sw	zero,16(s1)
    8000423c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004240:	00251513          	slli	a0,a0,0x2
    80004244:	ffffd097          	auipc	ra,0xffffd
    80004248:	124080e7          	jalr	292(ra) # 80001368 <_Z9mem_allocm>
    8000424c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004250:	01000513          	li	a0,16
    80004254:	fffff097          	auipc	ra,0xfffff
    80004258:	a5c080e7          	jalr	-1444(ra) # 80002cb0 <_Znwm>
    8000425c:	00050993          	mv	s3,a0
    80004260:	00000593          	li	a1,0
    80004264:	fffff097          	auipc	ra,0xfffff
    80004268:	ca0080e7          	jalr	-864(ra) # 80002f04 <_ZN9SemaphoreC1Ej>
    8000426c:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80004270:	01000513          	li	a0,16
    80004274:	fffff097          	auipc	ra,0xfffff
    80004278:	a3c080e7          	jalr	-1476(ra) # 80002cb0 <_Znwm>
    8000427c:	00050993          	mv	s3,a0
    80004280:	00090593          	mv	a1,s2
    80004284:	fffff097          	auipc	ra,0xfffff
    80004288:	c80080e7          	jalr	-896(ra) # 80002f04 <_ZN9SemaphoreC1Ej>
    8000428c:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004290:	01000513          	li	a0,16
    80004294:	fffff097          	auipc	ra,0xfffff
    80004298:	a1c080e7          	jalr	-1508(ra) # 80002cb0 <_Znwm>
    8000429c:	00050913          	mv	s2,a0
    800042a0:	00100593          	li	a1,1
    800042a4:	fffff097          	auipc	ra,0xfffff
    800042a8:	c60080e7          	jalr	-928(ra) # 80002f04 <_ZN9SemaphoreC1Ej>
    800042ac:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800042b0:	01000513          	li	a0,16
    800042b4:	fffff097          	auipc	ra,0xfffff
    800042b8:	9fc080e7          	jalr	-1540(ra) # 80002cb0 <_Znwm>
    800042bc:	00050913          	mv	s2,a0
    800042c0:	00100593          	li	a1,1
    800042c4:	fffff097          	auipc	ra,0xfffff
    800042c8:	c40080e7          	jalr	-960(ra) # 80002f04 <_ZN9SemaphoreC1Ej>
    800042cc:	0324b823          	sd	s2,48(s1)
}
    800042d0:	02813083          	ld	ra,40(sp)
    800042d4:	02013403          	ld	s0,32(sp)
    800042d8:	01813483          	ld	s1,24(sp)
    800042dc:	01013903          	ld	s2,16(sp)
    800042e0:	00813983          	ld	s3,8(sp)
    800042e4:	03010113          	addi	sp,sp,48
    800042e8:	00008067          	ret
    800042ec:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800042f0:	00098513          	mv	a0,s3
    800042f4:	fffff097          	auipc	ra,0xfffff
    800042f8:	9e4080e7          	jalr	-1564(ra) # 80002cd8 <_ZdlPv>
    800042fc:	00048513          	mv	a0,s1
    80004300:	0000b097          	auipc	ra,0xb
    80004304:	fb8080e7          	jalr	-72(ra) # 8000f2b8 <_Unwind_Resume>
    80004308:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    8000430c:	00098513          	mv	a0,s3
    80004310:	fffff097          	auipc	ra,0xfffff
    80004314:	9c8080e7          	jalr	-1592(ra) # 80002cd8 <_ZdlPv>
    80004318:	00048513          	mv	a0,s1
    8000431c:	0000b097          	auipc	ra,0xb
    80004320:	f9c080e7          	jalr	-100(ra) # 8000f2b8 <_Unwind_Resume>
    80004324:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004328:	00090513          	mv	a0,s2
    8000432c:	fffff097          	auipc	ra,0xfffff
    80004330:	9ac080e7          	jalr	-1620(ra) # 80002cd8 <_ZdlPv>
    80004334:	00048513          	mv	a0,s1
    80004338:	0000b097          	auipc	ra,0xb
    8000433c:	f80080e7          	jalr	-128(ra) # 8000f2b8 <_Unwind_Resume>
    80004340:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004344:	00090513          	mv	a0,s2
    80004348:	fffff097          	auipc	ra,0xfffff
    8000434c:	990080e7          	jalr	-1648(ra) # 80002cd8 <_ZdlPv>
    80004350:	00048513          	mv	a0,s1
    80004354:	0000b097          	auipc	ra,0xb
    80004358:	f64080e7          	jalr	-156(ra) # 8000f2b8 <_Unwind_Resume>

000000008000435c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    8000435c:	fe010113          	addi	sp,sp,-32
    80004360:	00113c23          	sd	ra,24(sp)
    80004364:	00813823          	sd	s0,16(sp)
    80004368:	00913423          	sd	s1,8(sp)
    8000436c:	01213023          	sd	s2,0(sp)
    80004370:	02010413          	addi	s0,sp,32
    80004374:	00050493          	mv	s1,a0
    80004378:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    8000437c:	01853503          	ld	a0,24(a0) # 8000e1f0 <timer_scratch>
    80004380:	fffff097          	auipc	ra,0xfffff
    80004384:	b4c080e7          	jalr	-1204(ra) # 80002ecc <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80004388:	0304b503          	ld	a0,48(s1)
    8000438c:	fffff097          	auipc	ra,0xfffff
    80004390:	b40080e7          	jalr	-1216(ra) # 80002ecc <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80004394:	0084b783          	ld	a5,8(s1)
    80004398:	0144a703          	lw	a4,20(s1)
    8000439c:	00271713          	slli	a4,a4,0x2
    800043a0:	00e787b3          	add	a5,a5,a4
    800043a4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800043a8:	0144a783          	lw	a5,20(s1)
    800043ac:	0017879b          	addiw	a5,a5,1
    800043b0:	0004a703          	lw	a4,0(s1)
    800043b4:	02e7e7bb          	remw	a5,a5,a4
    800043b8:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800043bc:	0304b503          	ld	a0,48(s1)
    800043c0:	fffff097          	auipc	ra,0xfffff
    800043c4:	b90080e7          	jalr	-1136(ra) # 80002f50 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800043c8:	0204b503          	ld	a0,32(s1)
    800043cc:	fffff097          	auipc	ra,0xfffff
    800043d0:	b84080e7          	jalr	-1148(ra) # 80002f50 <_ZN9Semaphore6signalEv>

}
    800043d4:	01813083          	ld	ra,24(sp)
    800043d8:	01013403          	ld	s0,16(sp)
    800043dc:	00813483          	ld	s1,8(sp)
    800043e0:	00013903          	ld	s2,0(sp)
    800043e4:	02010113          	addi	sp,sp,32
    800043e8:	00008067          	ret

00000000800043ec <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800043ec:	fe010113          	addi	sp,sp,-32
    800043f0:	00113c23          	sd	ra,24(sp)
    800043f4:	00813823          	sd	s0,16(sp)
    800043f8:	00913423          	sd	s1,8(sp)
    800043fc:	01213023          	sd	s2,0(sp)
    80004400:	02010413          	addi	s0,sp,32
    80004404:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004408:	02053503          	ld	a0,32(a0)
    8000440c:	fffff097          	auipc	ra,0xfffff
    80004410:	ac0080e7          	jalr	-1344(ra) # 80002ecc <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80004414:	0284b503          	ld	a0,40(s1)
    80004418:	fffff097          	auipc	ra,0xfffff
    8000441c:	ab4080e7          	jalr	-1356(ra) # 80002ecc <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80004420:	0084b703          	ld	a4,8(s1)
    80004424:	0104a783          	lw	a5,16(s1)
    80004428:	00279693          	slli	a3,a5,0x2
    8000442c:	00d70733          	add	a4,a4,a3
    80004430:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004434:	0017879b          	addiw	a5,a5,1
    80004438:	0004a703          	lw	a4,0(s1)
    8000443c:	02e7e7bb          	remw	a5,a5,a4
    80004440:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80004444:	0284b503          	ld	a0,40(s1)
    80004448:	fffff097          	auipc	ra,0xfffff
    8000444c:	b08080e7          	jalr	-1272(ra) # 80002f50 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80004450:	0184b503          	ld	a0,24(s1)
    80004454:	fffff097          	auipc	ra,0xfffff
    80004458:	afc080e7          	jalr	-1284(ra) # 80002f50 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000445c:	00090513          	mv	a0,s2
    80004460:	01813083          	ld	ra,24(sp)
    80004464:	01013403          	ld	s0,16(sp)
    80004468:	00813483          	ld	s1,8(sp)
    8000446c:	00013903          	ld	s2,0(sp)
    80004470:	02010113          	addi	sp,sp,32
    80004474:	00008067          	ret

0000000080004478 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80004478:	fe010113          	addi	sp,sp,-32
    8000447c:	00113c23          	sd	ra,24(sp)
    80004480:	00813823          	sd	s0,16(sp)
    80004484:	00913423          	sd	s1,8(sp)
    80004488:	01213023          	sd	s2,0(sp)
    8000448c:	02010413          	addi	s0,sp,32
    80004490:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80004494:	02853503          	ld	a0,40(a0)
    80004498:	fffff097          	auipc	ra,0xfffff
    8000449c:	a34080e7          	jalr	-1484(ra) # 80002ecc <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800044a0:	0304b503          	ld	a0,48(s1)
    800044a4:	fffff097          	auipc	ra,0xfffff
    800044a8:	a28080e7          	jalr	-1496(ra) # 80002ecc <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800044ac:	0144a783          	lw	a5,20(s1)
    800044b0:	0104a903          	lw	s2,16(s1)
    800044b4:	0327ce63          	blt	a5,s2,800044f0 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800044b8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800044bc:	0304b503          	ld	a0,48(s1)
    800044c0:	fffff097          	auipc	ra,0xfffff
    800044c4:	a90080e7          	jalr	-1392(ra) # 80002f50 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800044c8:	0284b503          	ld	a0,40(s1)
    800044cc:	fffff097          	auipc	ra,0xfffff
    800044d0:	a84080e7          	jalr	-1404(ra) # 80002f50 <_ZN9Semaphore6signalEv>

    return ret;
}
    800044d4:	00090513          	mv	a0,s2
    800044d8:	01813083          	ld	ra,24(sp)
    800044dc:	01013403          	ld	s0,16(sp)
    800044e0:	00813483          	ld	s1,8(sp)
    800044e4:	00013903          	ld	s2,0(sp)
    800044e8:	02010113          	addi	sp,sp,32
    800044ec:	00008067          	ret
        ret = cap - head + tail;
    800044f0:	0004a703          	lw	a4,0(s1)
    800044f4:	4127093b          	subw	s2,a4,s2
    800044f8:	00f9093b          	addw	s2,s2,a5
    800044fc:	fc1ff06f          	j	800044bc <_ZN9BufferCPP6getCntEv+0x44>

0000000080004500 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80004500:	fe010113          	addi	sp,sp,-32
    80004504:	00113c23          	sd	ra,24(sp)
    80004508:	00813823          	sd	s0,16(sp)
    8000450c:	00913423          	sd	s1,8(sp)
    80004510:	02010413          	addi	s0,sp,32
    80004514:	00050493          	mv	s1,a0
    Console::putc('\n');
    80004518:	00a00513          	li	a0,10
    8000451c:	fffff097          	auipc	ra,0xfffff
    80004520:	a94080e7          	jalr	-1388(ra) # 80002fb0 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80004524:	00004517          	auipc	a0,0x4
    80004528:	d0450513          	addi	a0,a0,-764 # 80008228 <CONSOLE_STATUS+0x218>
    8000452c:	00000097          	auipc	ra,0x0
    80004530:	a30080e7          	jalr	-1488(ra) # 80003f5c <_Z11printStringPKc>
    while (getCnt()) {
    80004534:	00048513          	mv	a0,s1
    80004538:	00000097          	auipc	ra,0x0
    8000453c:	f40080e7          	jalr	-192(ra) # 80004478 <_ZN9BufferCPP6getCntEv>
    80004540:	02050c63          	beqz	a0,80004578 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80004544:	0084b783          	ld	a5,8(s1)
    80004548:	0104a703          	lw	a4,16(s1)
    8000454c:	00271713          	slli	a4,a4,0x2
    80004550:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80004554:	0007c503          	lbu	a0,0(a5)
    80004558:	fffff097          	auipc	ra,0xfffff
    8000455c:	a58080e7          	jalr	-1448(ra) # 80002fb0 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80004560:	0104a783          	lw	a5,16(s1)
    80004564:	0017879b          	addiw	a5,a5,1
    80004568:	0004a703          	lw	a4,0(s1)
    8000456c:	02e7e7bb          	remw	a5,a5,a4
    80004570:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80004574:	fc1ff06f          	j	80004534 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80004578:	02100513          	li	a0,33
    8000457c:	fffff097          	auipc	ra,0xfffff
    80004580:	a34080e7          	jalr	-1484(ra) # 80002fb0 <_ZN7Console4putcEc>
    Console::putc('\n');
    80004584:	00a00513          	li	a0,10
    80004588:	fffff097          	auipc	ra,0xfffff
    8000458c:	a28080e7          	jalr	-1496(ra) # 80002fb0 <_ZN7Console4putcEc>
    mem_free(buffer);
    80004590:	0084b503          	ld	a0,8(s1)
    80004594:	ffffd097          	auipc	ra,0xffffd
    80004598:	e04080e7          	jalr	-508(ra) # 80001398 <_Z8mem_freePv>
    delete itemAvailable;
    8000459c:	0204b503          	ld	a0,32(s1)
    800045a0:	00050863          	beqz	a0,800045b0 <_ZN9BufferCPPD1Ev+0xb0>
    800045a4:	00053783          	ld	a5,0(a0)
    800045a8:	0087b783          	ld	a5,8(a5)
    800045ac:	000780e7          	jalr	a5
    delete spaceAvailable;
    800045b0:	0184b503          	ld	a0,24(s1)
    800045b4:	00050863          	beqz	a0,800045c4 <_ZN9BufferCPPD1Ev+0xc4>
    800045b8:	00053783          	ld	a5,0(a0)
    800045bc:	0087b783          	ld	a5,8(a5)
    800045c0:	000780e7          	jalr	a5
    delete mutexTail;
    800045c4:	0304b503          	ld	a0,48(s1)
    800045c8:	00050863          	beqz	a0,800045d8 <_ZN9BufferCPPD1Ev+0xd8>
    800045cc:	00053783          	ld	a5,0(a0)
    800045d0:	0087b783          	ld	a5,8(a5)
    800045d4:	000780e7          	jalr	a5
    delete mutexHead;
    800045d8:	0284b503          	ld	a0,40(s1)
    800045dc:	00050863          	beqz	a0,800045ec <_ZN9BufferCPPD1Ev+0xec>
    800045e0:	00053783          	ld	a5,0(a0)
    800045e4:	0087b783          	ld	a5,8(a5)
    800045e8:	000780e7          	jalr	a5
}
    800045ec:	01813083          	ld	ra,24(sp)
    800045f0:	01013403          	ld	s0,16(sp)
    800045f4:	00813483          	ld	s1,8(sp)
    800045f8:	02010113          	addi	sp,sp,32
    800045fc:	00008067          	ret

0000000080004600 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80004600:	fe010113          	addi	sp,sp,-32
    80004604:	00113c23          	sd	ra,24(sp)
    80004608:	00813823          	sd	s0,16(sp)
    8000460c:	00913423          	sd	s1,8(sp)
    80004610:	01213023          	sd	s2,0(sp)
    80004614:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004618:	00000913          	li	s2,0
    8000461c:	0380006f          	j	80004654 <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004620:	ffffd097          	auipc	ra,0xffffd
    80004624:	e24080e7          	jalr	-476(ra) # 80001444 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004628:	00148493          	addi	s1,s1,1
    8000462c:	000027b7          	lui	a5,0x2
    80004630:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004634:	0097ee63          	bltu	a5,s1,80004650 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004638:	00000713          	li	a4,0
    8000463c:	000077b7          	lui	a5,0x7
    80004640:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004644:	fce7eee3          	bltu	a5,a4,80004620 <_Z11workerBodyAPv+0x20>
    80004648:	00170713          	addi	a4,a4,1
    8000464c:	ff1ff06f          	j	8000463c <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004650:	00190913          	addi	s2,s2,1
    80004654:	00900793          	li	a5,9
    80004658:	0527e063          	bltu	a5,s2,80004698 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000465c:	00004517          	auipc	a0,0x4
    80004660:	be450513          	addi	a0,a0,-1052 # 80008240 <CONSOLE_STATUS+0x230>
    80004664:	00000097          	auipc	ra,0x0
    80004668:	8f8080e7          	jalr	-1800(ra) # 80003f5c <_Z11printStringPKc>
    8000466c:	00000613          	li	a2,0
    80004670:	00a00593          	li	a1,10
    80004674:	0009051b          	sext.w	a0,s2
    80004678:	00000097          	auipc	ra,0x0
    8000467c:	a7c080e7          	jalr	-1412(ra) # 800040f4 <_Z8printIntiii>
    80004680:	00004517          	auipc	a0,0x4
    80004684:	dc850513          	addi	a0,a0,-568 # 80008448 <CONSOLE_STATUS+0x438>
    80004688:	00000097          	auipc	ra,0x0
    8000468c:	8d4080e7          	jalr	-1836(ra) # 80003f5c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004690:	00000493          	li	s1,0
    80004694:	f99ff06f          	j	8000462c <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004698:	00004517          	auipc	a0,0x4
    8000469c:	bb050513          	addi	a0,a0,-1104 # 80008248 <CONSOLE_STATUS+0x238>
    800046a0:	00000097          	auipc	ra,0x0
    800046a4:	8bc080e7          	jalr	-1860(ra) # 80003f5c <_Z11printStringPKc>
    finishedA = true;
    800046a8:	00100793          	li	a5,1
    800046ac:	0000a717          	auipc	a4,0xa
    800046b0:	b2f70a23          	sb	a5,-1228(a4) # 8000e1e0 <finishedA>
}
    800046b4:	01813083          	ld	ra,24(sp)
    800046b8:	01013403          	ld	s0,16(sp)
    800046bc:	00813483          	ld	s1,8(sp)
    800046c0:	00013903          	ld	s2,0(sp)
    800046c4:	02010113          	addi	sp,sp,32
    800046c8:	00008067          	ret

00000000800046cc <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    800046cc:	fe010113          	addi	sp,sp,-32
    800046d0:	00113c23          	sd	ra,24(sp)
    800046d4:	00813823          	sd	s0,16(sp)
    800046d8:	00913423          	sd	s1,8(sp)
    800046dc:	01213023          	sd	s2,0(sp)
    800046e0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800046e4:	00000913          	li	s2,0
    800046e8:	0380006f          	j	80004720 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800046ec:	ffffd097          	auipc	ra,0xffffd
    800046f0:	d58080e7          	jalr	-680(ra) # 80001444 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800046f4:	00148493          	addi	s1,s1,1
    800046f8:	000027b7          	lui	a5,0x2
    800046fc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004700:	0097ee63          	bltu	a5,s1,8000471c <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004704:	00000713          	li	a4,0
    80004708:	000077b7          	lui	a5,0x7
    8000470c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004710:	fce7eee3          	bltu	a5,a4,800046ec <_Z11workerBodyBPv+0x20>
    80004714:	00170713          	addi	a4,a4,1
    80004718:	ff1ff06f          	j	80004708 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000471c:	00190913          	addi	s2,s2,1
    80004720:	00f00793          	li	a5,15
    80004724:	0527e063          	bltu	a5,s2,80004764 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004728:	00004517          	auipc	a0,0x4
    8000472c:	b3050513          	addi	a0,a0,-1232 # 80008258 <CONSOLE_STATUS+0x248>
    80004730:	00000097          	auipc	ra,0x0
    80004734:	82c080e7          	jalr	-2004(ra) # 80003f5c <_Z11printStringPKc>
    80004738:	00000613          	li	a2,0
    8000473c:	00a00593          	li	a1,10
    80004740:	0009051b          	sext.w	a0,s2
    80004744:	00000097          	auipc	ra,0x0
    80004748:	9b0080e7          	jalr	-1616(ra) # 800040f4 <_Z8printIntiii>
    8000474c:	00004517          	auipc	a0,0x4
    80004750:	cfc50513          	addi	a0,a0,-772 # 80008448 <CONSOLE_STATUS+0x438>
    80004754:	00000097          	auipc	ra,0x0
    80004758:	808080e7          	jalr	-2040(ra) # 80003f5c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000475c:	00000493          	li	s1,0
    80004760:	f99ff06f          	j	800046f8 <_Z11workerBodyBPv+0x2c>
        }
    }
    thread_dispatch();
    80004764:	ffffd097          	auipc	ra,0xffffd
    80004768:	ce0080e7          	jalr	-800(ra) # 80001444 <_Z15thread_dispatchv>
    printString("B finished!\n");
    8000476c:	00004517          	auipc	a0,0x4
    80004770:	af450513          	addi	a0,a0,-1292 # 80008260 <CONSOLE_STATUS+0x250>
    80004774:	fffff097          	auipc	ra,0xfffff
    80004778:	7e8080e7          	jalr	2024(ra) # 80003f5c <_Z11printStringPKc>
    finishedB = true;
    8000477c:	00100793          	li	a5,1
    80004780:	0000a717          	auipc	a4,0xa
    80004784:	a6f700a3          	sb	a5,-1439(a4) # 8000e1e1 <finishedB>
}
    80004788:	01813083          	ld	ra,24(sp)
    8000478c:	01013403          	ld	s0,16(sp)
    80004790:	00813483          	ld	s1,8(sp)
    80004794:	00013903          	ld	s2,0(sp)
    80004798:	02010113          	addi	sp,sp,32
    8000479c:	00008067          	ret

00000000800047a0 <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    800047a0:	fe010113          	addi	sp,sp,-32
    800047a4:	00113c23          	sd	ra,24(sp)
    800047a8:	00813823          	sd	s0,16(sp)
    800047ac:	00913423          	sd	s1,8(sp)
    800047b0:	01213023          	sd	s2,0(sp)
    800047b4:	02010413          	addi	s0,sp,32
    800047b8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800047bc:	00100793          	li	a5,1
    800047c0:	02a7f863          	bgeu	a5,a0,800047f0 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800047c4:	00a00793          	li	a5,10
    800047c8:	02f577b3          	remu	a5,a0,a5
    800047cc:	02078e63          	beqz	a5,80004808 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800047d0:	fff48513          	addi	a0,s1,-1
    800047d4:	00000097          	auipc	ra,0x0
    800047d8:	fcc080e7          	jalr	-52(ra) # 800047a0 <_Z9fibonaccim>
    800047dc:	00050913          	mv	s2,a0
    800047e0:	ffe48513          	addi	a0,s1,-2
    800047e4:	00000097          	auipc	ra,0x0
    800047e8:	fbc080e7          	jalr	-68(ra) # 800047a0 <_Z9fibonaccim>
    800047ec:	00a90533          	add	a0,s2,a0
}
    800047f0:	01813083          	ld	ra,24(sp)
    800047f4:	01013403          	ld	s0,16(sp)
    800047f8:	00813483          	ld	s1,8(sp)
    800047fc:	00013903          	ld	s2,0(sp)
    80004800:	02010113          	addi	sp,sp,32
    80004804:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004808:	ffffd097          	auipc	ra,0xffffd
    8000480c:	c3c080e7          	jalr	-964(ra) # 80001444 <_Z15thread_dispatchv>
    80004810:	fc1ff06f          	j	800047d0 <_Z9fibonaccim+0x30>

0000000080004814 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    80004814:	fe010113          	addi	sp,sp,-32
    80004818:	00113c23          	sd	ra,24(sp)
    8000481c:	00813823          	sd	s0,16(sp)
    80004820:	00913423          	sd	s1,8(sp)
    80004824:	01213023          	sd	s2,0(sp)
    80004828:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000482c:	00000493          	li	s1,0
    80004830:	0400006f          	j	80004870 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004834:	00004517          	auipc	a0,0x4
    80004838:	a3c50513          	addi	a0,a0,-1476 # 80008270 <CONSOLE_STATUS+0x260>
    8000483c:	fffff097          	auipc	ra,0xfffff
    80004840:	720080e7          	jalr	1824(ra) # 80003f5c <_Z11printStringPKc>
    80004844:	00000613          	li	a2,0
    80004848:	00a00593          	li	a1,10
    8000484c:	00048513          	mv	a0,s1
    80004850:	00000097          	auipc	ra,0x0
    80004854:	8a4080e7          	jalr	-1884(ra) # 800040f4 <_Z8printIntiii>
    80004858:	00004517          	auipc	a0,0x4
    8000485c:	bf050513          	addi	a0,a0,-1040 # 80008448 <CONSOLE_STATUS+0x438>
    80004860:	fffff097          	auipc	ra,0xfffff
    80004864:	6fc080e7          	jalr	1788(ra) # 80003f5c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004868:	0014849b          	addiw	s1,s1,1
    8000486c:	0ff4f493          	andi	s1,s1,255
    80004870:	00200793          	li	a5,2
    80004874:	fc97f0e3          	bgeu	a5,s1,80004834 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80004878:	00004517          	auipc	a0,0x4
    8000487c:	a0050513          	addi	a0,a0,-1536 # 80008278 <CONSOLE_STATUS+0x268>
    80004880:	fffff097          	auipc	ra,0xfffff
    80004884:	6dc080e7          	jalr	1756(ra) # 80003f5c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004888:	00700313          	li	t1,7
    thread_dispatch();
    8000488c:	ffffd097          	auipc	ra,0xffffd
    80004890:	bb8080e7          	jalr	-1096(ra) # 80001444 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004894:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004898:	00004517          	auipc	a0,0x4
    8000489c:	9f050513          	addi	a0,a0,-1552 # 80008288 <CONSOLE_STATUS+0x278>
    800048a0:	fffff097          	auipc	ra,0xfffff
    800048a4:	6bc080e7          	jalr	1724(ra) # 80003f5c <_Z11printStringPKc>
    800048a8:	00000613          	li	a2,0
    800048ac:	00a00593          	li	a1,10
    800048b0:	0009051b          	sext.w	a0,s2
    800048b4:	00000097          	auipc	ra,0x0
    800048b8:	840080e7          	jalr	-1984(ra) # 800040f4 <_Z8printIntiii>
    800048bc:	00004517          	auipc	a0,0x4
    800048c0:	b8c50513          	addi	a0,a0,-1140 # 80008448 <CONSOLE_STATUS+0x438>
    800048c4:	fffff097          	auipc	ra,0xfffff
    800048c8:	698080e7          	jalr	1688(ra) # 80003f5c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800048cc:	00c00513          	li	a0,12
    800048d0:	00000097          	auipc	ra,0x0
    800048d4:	ed0080e7          	jalr	-304(ra) # 800047a0 <_Z9fibonaccim>
    800048d8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800048dc:	00004517          	auipc	a0,0x4
    800048e0:	9b450513          	addi	a0,a0,-1612 # 80008290 <CONSOLE_STATUS+0x280>
    800048e4:	fffff097          	auipc	ra,0xfffff
    800048e8:	678080e7          	jalr	1656(ra) # 80003f5c <_Z11printStringPKc>
    800048ec:	00000613          	li	a2,0
    800048f0:	00a00593          	li	a1,10
    800048f4:	0009051b          	sext.w	a0,s2
    800048f8:	fffff097          	auipc	ra,0xfffff
    800048fc:	7fc080e7          	jalr	2044(ra) # 800040f4 <_Z8printIntiii>
    80004900:	00004517          	auipc	a0,0x4
    80004904:	b4850513          	addi	a0,a0,-1208 # 80008448 <CONSOLE_STATUS+0x438>
    80004908:	fffff097          	auipc	ra,0xfffff
    8000490c:	654080e7          	jalr	1620(ra) # 80003f5c <_Z11printStringPKc>
    80004910:	0400006f          	j	80004950 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004914:	00004517          	auipc	a0,0x4
    80004918:	95c50513          	addi	a0,a0,-1700 # 80008270 <CONSOLE_STATUS+0x260>
    8000491c:	fffff097          	auipc	ra,0xfffff
    80004920:	640080e7          	jalr	1600(ra) # 80003f5c <_Z11printStringPKc>
    80004924:	00000613          	li	a2,0
    80004928:	00a00593          	li	a1,10
    8000492c:	00048513          	mv	a0,s1
    80004930:	fffff097          	auipc	ra,0xfffff
    80004934:	7c4080e7          	jalr	1988(ra) # 800040f4 <_Z8printIntiii>
    80004938:	00004517          	auipc	a0,0x4
    8000493c:	b1050513          	addi	a0,a0,-1264 # 80008448 <CONSOLE_STATUS+0x438>
    80004940:	fffff097          	auipc	ra,0xfffff
    80004944:	61c080e7          	jalr	1564(ra) # 80003f5c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004948:	0014849b          	addiw	s1,s1,1
    8000494c:	0ff4f493          	andi	s1,s1,255
    80004950:	00500793          	li	a5,5
    80004954:	fc97f0e3          	bgeu	a5,s1,80004914 <_Z11workerBodyCPv+0x100>
    }

    thread_dispatch();
    80004958:	ffffd097          	auipc	ra,0xffffd
    8000495c:	aec080e7          	jalr	-1300(ra) # 80001444 <_Z15thread_dispatchv>
    printString("A finished!\n");
    80004960:	00004517          	auipc	a0,0x4
    80004964:	8e850513          	addi	a0,a0,-1816 # 80008248 <CONSOLE_STATUS+0x238>
    80004968:	fffff097          	auipc	ra,0xfffff
    8000496c:	5f4080e7          	jalr	1524(ra) # 80003f5c <_Z11printStringPKc>
    finishedC = true;
    80004970:	00100793          	li	a5,1
    80004974:	0000a717          	auipc	a4,0xa
    80004978:	86f70723          	sb	a5,-1938(a4) # 8000e1e2 <finishedC>
}
    8000497c:	01813083          	ld	ra,24(sp)
    80004980:	01013403          	ld	s0,16(sp)
    80004984:	00813483          	ld	s1,8(sp)
    80004988:	00013903          	ld	s2,0(sp)
    8000498c:	02010113          	addi	sp,sp,32
    80004990:	00008067          	ret

0000000080004994 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80004994:	fe010113          	addi	sp,sp,-32
    80004998:	00113c23          	sd	ra,24(sp)
    8000499c:	00813823          	sd	s0,16(sp)
    800049a0:	00913423          	sd	s1,8(sp)
    800049a4:	01213023          	sd	s2,0(sp)
    800049a8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800049ac:	00a00493          	li	s1,10
    800049b0:	0400006f          	j	800049f0 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800049b4:	00004517          	auipc	a0,0x4
    800049b8:	8ec50513          	addi	a0,a0,-1812 # 800082a0 <CONSOLE_STATUS+0x290>
    800049bc:	fffff097          	auipc	ra,0xfffff
    800049c0:	5a0080e7          	jalr	1440(ra) # 80003f5c <_Z11printStringPKc>
    800049c4:	00000613          	li	a2,0
    800049c8:	00a00593          	li	a1,10
    800049cc:	00048513          	mv	a0,s1
    800049d0:	fffff097          	auipc	ra,0xfffff
    800049d4:	724080e7          	jalr	1828(ra) # 800040f4 <_Z8printIntiii>
    800049d8:	00004517          	auipc	a0,0x4
    800049dc:	a7050513          	addi	a0,a0,-1424 # 80008448 <CONSOLE_STATUS+0x438>
    800049e0:	fffff097          	auipc	ra,0xfffff
    800049e4:	57c080e7          	jalr	1404(ra) # 80003f5c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800049e8:	0014849b          	addiw	s1,s1,1
    800049ec:	0ff4f493          	andi	s1,s1,255
    800049f0:	00c00793          	li	a5,12
    800049f4:	fc97f0e3          	bgeu	a5,s1,800049b4 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800049f8:	00004517          	auipc	a0,0x4
    800049fc:	8b050513          	addi	a0,a0,-1872 # 800082a8 <CONSOLE_STATUS+0x298>
    80004a00:	fffff097          	auipc	ra,0xfffff
    80004a04:	55c080e7          	jalr	1372(ra) # 80003f5c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004a08:	00500313          	li	t1,5
    thread_dispatch();
    80004a0c:	ffffd097          	auipc	ra,0xffffd
    80004a10:	a38080e7          	jalr	-1480(ra) # 80001444 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004a14:	01000513          	li	a0,16
    80004a18:	00000097          	auipc	ra,0x0
    80004a1c:	d88080e7          	jalr	-632(ra) # 800047a0 <_Z9fibonaccim>
    80004a20:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004a24:	00004517          	auipc	a0,0x4
    80004a28:	89450513          	addi	a0,a0,-1900 # 800082b8 <CONSOLE_STATUS+0x2a8>
    80004a2c:	fffff097          	auipc	ra,0xfffff
    80004a30:	530080e7          	jalr	1328(ra) # 80003f5c <_Z11printStringPKc>
    80004a34:	00000613          	li	a2,0
    80004a38:	00a00593          	li	a1,10
    80004a3c:	0009051b          	sext.w	a0,s2
    80004a40:	fffff097          	auipc	ra,0xfffff
    80004a44:	6b4080e7          	jalr	1716(ra) # 800040f4 <_Z8printIntiii>
    80004a48:	00004517          	auipc	a0,0x4
    80004a4c:	a0050513          	addi	a0,a0,-1536 # 80008448 <CONSOLE_STATUS+0x438>
    80004a50:	fffff097          	auipc	ra,0xfffff
    80004a54:	50c080e7          	jalr	1292(ra) # 80003f5c <_Z11printStringPKc>
    80004a58:	0400006f          	j	80004a98 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004a5c:	00004517          	auipc	a0,0x4
    80004a60:	84450513          	addi	a0,a0,-1980 # 800082a0 <CONSOLE_STATUS+0x290>
    80004a64:	fffff097          	auipc	ra,0xfffff
    80004a68:	4f8080e7          	jalr	1272(ra) # 80003f5c <_Z11printStringPKc>
    80004a6c:	00000613          	li	a2,0
    80004a70:	00a00593          	li	a1,10
    80004a74:	00048513          	mv	a0,s1
    80004a78:	fffff097          	auipc	ra,0xfffff
    80004a7c:	67c080e7          	jalr	1660(ra) # 800040f4 <_Z8printIntiii>
    80004a80:	00004517          	auipc	a0,0x4
    80004a84:	9c850513          	addi	a0,a0,-1592 # 80008448 <CONSOLE_STATUS+0x438>
    80004a88:	fffff097          	auipc	ra,0xfffff
    80004a8c:	4d4080e7          	jalr	1236(ra) # 80003f5c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004a90:	0014849b          	addiw	s1,s1,1
    80004a94:	0ff4f493          	andi	s1,s1,255
    80004a98:	00f00793          	li	a5,15
    80004a9c:	fc97f0e3          	bgeu	a5,s1,80004a5c <_Z11workerBodyDPv+0xc8>
    }

    thread_dispatch();
    80004aa0:	ffffd097          	auipc	ra,0xffffd
    80004aa4:	9a4080e7          	jalr	-1628(ra) # 80001444 <_Z15thread_dispatchv>
    printString("D finished!\n");
    80004aa8:	00004517          	auipc	a0,0x4
    80004aac:	82050513          	addi	a0,a0,-2016 # 800082c8 <CONSOLE_STATUS+0x2b8>
    80004ab0:	fffff097          	auipc	ra,0xfffff
    80004ab4:	4ac080e7          	jalr	1196(ra) # 80003f5c <_Z11printStringPKc>
    finishedD = true;
    80004ab8:	00100793          	li	a5,1
    80004abc:	00009717          	auipc	a4,0x9
    80004ac0:	72f703a3          	sb	a5,1831(a4) # 8000e1e3 <finishedD>
}
    80004ac4:	01813083          	ld	ra,24(sp)
    80004ac8:	01013403          	ld	s0,16(sp)
    80004acc:	00813483          	ld	s1,8(sp)
    80004ad0:	00013903          	ld	s2,0(sp)
    80004ad4:	02010113          	addi	sp,sp,32
    80004ad8:	00008067          	ret

0000000080004adc <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004adc:	fc010113          	addi	sp,sp,-64
    80004ae0:	02113c23          	sd	ra,56(sp)
    80004ae4:	02813823          	sd	s0,48(sp)
    80004ae8:	02913423          	sd	s1,40(sp)
    80004aec:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004af0:	00000613          	li	a2,0
    80004af4:	00000597          	auipc	a1,0x0
    80004af8:	b0c58593          	addi	a1,a1,-1268 # 80004600 <_Z11workerBodyAPv>
    80004afc:	fc040513          	addi	a0,s0,-64
    80004b00:	ffffd097          	auipc	ra,0xffffd
    80004b04:	8c4080e7          	jalr	-1852(ra) # 800013c4 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80004b08:	00003517          	auipc	a0,0x3
    80004b0c:	7d050513          	addi	a0,a0,2000 # 800082d8 <CONSOLE_STATUS+0x2c8>
    80004b10:	fffff097          	auipc	ra,0xfffff
    80004b14:	44c080e7          	jalr	1100(ra) # 80003f5c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004b18:	00000613          	li	a2,0
    80004b1c:	00000597          	auipc	a1,0x0
    80004b20:	bb058593          	addi	a1,a1,-1104 # 800046cc <_Z11workerBodyBPv>
    80004b24:	fc840513          	addi	a0,s0,-56
    80004b28:	ffffd097          	auipc	ra,0xffffd
    80004b2c:	89c080e7          	jalr	-1892(ra) # 800013c4 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80004b30:	00003517          	auipc	a0,0x3
    80004b34:	7c050513          	addi	a0,a0,1984 # 800082f0 <CONSOLE_STATUS+0x2e0>
    80004b38:	fffff097          	auipc	ra,0xfffff
    80004b3c:	424080e7          	jalr	1060(ra) # 80003f5c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004b40:	00000613          	li	a2,0
    80004b44:	00000597          	auipc	a1,0x0
    80004b48:	cd058593          	addi	a1,a1,-816 # 80004814 <_Z11workerBodyCPv>
    80004b4c:	fd040513          	addi	a0,s0,-48
    80004b50:	ffffd097          	auipc	ra,0xffffd
    80004b54:	874080e7          	jalr	-1932(ra) # 800013c4 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80004b58:	00003517          	auipc	a0,0x3
    80004b5c:	7b050513          	addi	a0,a0,1968 # 80008308 <CONSOLE_STATUS+0x2f8>
    80004b60:	fffff097          	auipc	ra,0xfffff
    80004b64:	3fc080e7          	jalr	1020(ra) # 80003f5c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004b68:	00000613          	li	a2,0
    80004b6c:	00000597          	auipc	a1,0x0
    80004b70:	e2858593          	addi	a1,a1,-472 # 80004994 <_Z11workerBodyDPv>
    80004b74:	fd840513          	addi	a0,s0,-40
    80004b78:	ffffd097          	auipc	ra,0xffffd
    80004b7c:	84c080e7          	jalr	-1972(ra) # 800013c4 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80004b80:	00003517          	auipc	a0,0x3
    80004b84:	7a050513          	addi	a0,a0,1952 # 80008320 <CONSOLE_STATUS+0x310>
    80004b88:	fffff097          	auipc	ra,0xfffff
    80004b8c:	3d4080e7          	jalr	980(ra) # 80003f5c <_Z11printStringPKc>
    80004b90:	00c0006f          	j	80004b9c <_Z18Threads_C_API_testv+0xc0>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004b94:	ffffd097          	auipc	ra,0xffffd
    80004b98:	8b0080e7          	jalr	-1872(ra) # 80001444 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004b9c:	00009797          	auipc	a5,0x9
    80004ba0:	6447c783          	lbu	a5,1604(a5) # 8000e1e0 <finishedA>
    80004ba4:	fe0788e3          	beqz	a5,80004b94 <_Z18Threads_C_API_testv+0xb8>
    80004ba8:	00009797          	auipc	a5,0x9
    80004bac:	6397c783          	lbu	a5,1593(a5) # 8000e1e1 <finishedB>
    80004bb0:	fe0782e3          	beqz	a5,80004b94 <_Z18Threads_C_API_testv+0xb8>
    80004bb4:	00009797          	auipc	a5,0x9
    80004bb8:	62e7c783          	lbu	a5,1582(a5) # 8000e1e2 <finishedC>
    80004bbc:	fc078ce3          	beqz	a5,80004b94 <_Z18Threads_C_API_testv+0xb8>
    80004bc0:	00009797          	auipc	a5,0x9
    80004bc4:	6237c783          	lbu	a5,1571(a5) # 8000e1e3 <finishedD>
    80004bc8:	fc0786e3          	beqz	a5,80004b94 <_Z18Threads_C_API_testv+0xb8>
    }

    for (auto &thread: threads) { delete thread; }
    80004bcc:	fc040493          	addi	s1,s0,-64
    80004bd0:	0080006f          	j	80004bd8 <_Z18Threads_C_API_testv+0xfc>
    80004bd4:	00848493          	addi	s1,s1,8
    80004bd8:	fe040793          	addi	a5,s0,-32
    80004bdc:	00f48c63          	beq	s1,a5,80004bf4 <_Z18Threads_C_API_testv+0x118>
    80004be0:	0004b503          	ld	a0,0(s1)
    80004be4:	fe0508e3          	beqz	a0,80004bd4 <_Z18Threads_C_API_testv+0xf8>
    80004be8:	ffffd097          	auipc	ra,0xffffd
    80004bec:	ad8080e7          	jalr	-1320(ra) # 800016c0 <_ZN7_threaddlEPv>
    80004bf0:	fe5ff06f          	j	80004bd4 <_Z18Threads_C_API_testv+0xf8>
}
    80004bf4:	03813083          	ld	ra,56(sp)
    80004bf8:	03013403          	ld	s0,48(sp)
    80004bfc:	02813483          	ld	s1,40(sp)
    80004c00:	04010113          	addi	sp,sp,64
    80004c04:	00008067          	ret

0000000080004c08 <_Z8userMainv>:

//#include "ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain()
{
    80004c08:	ff010113          	addi	sp,sp,-16
    80004c0c:	00113423          	sd	ra,8(sp)
    80004c10:	00813023          	sd	s0,0(sp)
    80004c14:	01010413          	addi	s0,sp,16
    //__asm__ volatile("csrr a0, sstatus"); // test for changing privilege

    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    80004c18:	00000097          	auipc	ra,0x0
    80004c1c:	ec4080e7          	jalr	-316(ra) # 80004adc <_Z18Threads_C_API_testv>
    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    80004c20:	00813083          	ld	ra,8(sp)
    80004c24:	00013403          	ld	s0,0(sp)
    80004c28:	01010113          	addi	sp,sp,16
    80004c2c:	00008067          	ret

0000000080004c30 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004c30:	fe010113          	addi	sp,sp,-32
    80004c34:	00113c23          	sd	ra,24(sp)
    80004c38:	00813823          	sd	s0,16(sp)
    80004c3c:	00913423          	sd	s1,8(sp)
    80004c40:	01213023          	sd	s2,0(sp)
    80004c44:	02010413          	addi	s0,sp,32
    80004c48:	00050493          	mv	s1,a0
    80004c4c:	00058913          	mv	s2,a1
    80004c50:	0015879b          	addiw	a5,a1,1
    80004c54:	0007851b          	sext.w	a0,a5
    80004c58:	00f4a023          	sw	a5,0(s1)
    80004c5c:	0004a823          	sw	zero,16(s1)
    80004c60:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004c64:	00251513          	slli	a0,a0,0x2
    80004c68:	ffffc097          	auipc	ra,0xffffc
    80004c6c:	700080e7          	jalr	1792(ra) # 80001368 <_Z9mem_allocm>
    80004c70:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004c74:	00000593          	li	a1,0
    80004c78:	02048513          	addi	a0,s1,32
    80004c7c:	ffffd097          	auipc	ra,0xffffd
    80004c80:	810080e7          	jalr	-2032(ra) # 8000148c <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80004c84:	00090593          	mv	a1,s2
    80004c88:	01848513          	addi	a0,s1,24
    80004c8c:	ffffd097          	auipc	ra,0xffffd
    80004c90:	800080e7          	jalr	-2048(ra) # 8000148c <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80004c94:	00100593          	li	a1,1
    80004c98:	02848513          	addi	a0,s1,40
    80004c9c:	ffffc097          	auipc	ra,0xffffc
    80004ca0:	7f0080e7          	jalr	2032(ra) # 8000148c <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80004ca4:	00100593          	li	a1,1
    80004ca8:	03048513          	addi	a0,s1,48
    80004cac:	ffffc097          	auipc	ra,0xffffc
    80004cb0:	7e0080e7          	jalr	2016(ra) # 8000148c <_Z8sem_openPP4_semj>
}
    80004cb4:	01813083          	ld	ra,24(sp)
    80004cb8:	01013403          	ld	s0,16(sp)
    80004cbc:	00813483          	ld	s1,8(sp)
    80004cc0:	00013903          	ld	s2,0(sp)
    80004cc4:	02010113          	addi	sp,sp,32
    80004cc8:	00008067          	ret

0000000080004ccc <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80004ccc:	fe010113          	addi	sp,sp,-32
    80004cd0:	00113c23          	sd	ra,24(sp)
    80004cd4:	00813823          	sd	s0,16(sp)
    80004cd8:	00913423          	sd	s1,8(sp)
    80004cdc:	01213023          	sd	s2,0(sp)
    80004ce0:	02010413          	addi	s0,sp,32
    80004ce4:	00050493          	mv	s1,a0
    80004ce8:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80004cec:	01853503          	ld	a0,24(a0)
    80004cf0:	ffffd097          	auipc	ra,0xffffd
    80004cf4:	800080e7          	jalr	-2048(ra) # 800014f0 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80004cf8:	0304b503          	ld	a0,48(s1)
    80004cfc:	ffffc097          	auipc	ra,0xffffc
    80004d00:	7f4080e7          	jalr	2036(ra) # 800014f0 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80004d04:	0084b783          	ld	a5,8(s1)
    80004d08:	0144a703          	lw	a4,20(s1)
    80004d0c:	00271713          	slli	a4,a4,0x2
    80004d10:	00e787b3          	add	a5,a5,a4
    80004d14:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004d18:	0144a783          	lw	a5,20(s1)
    80004d1c:	0017879b          	addiw	a5,a5,1
    80004d20:	0004a703          	lw	a4,0(s1)
    80004d24:	02e7e7bb          	remw	a5,a5,a4
    80004d28:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80004d2c:	0304b503          	ld	a0,48(s1)
    80004d30:	ffffc097          	auipc	ra,0xffffc
    80004d34:	7ec080e7          	jalr	2028(ra) # 8000151c <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80004d38:	0204b503          	ld	a0,32(s1)
    80004d3c:	ffffc097          	auipc	ra,0xffffc
    80004d40:	7e0080e7          	jalr	2016(ra) # 8000151c <_Z10sem_signalP4_sem>

}
    80004d44:	01813083          	ld	ra,24(sp)
    80004d48:	01013403          	ld	s0,16(sp)
    80004d4c:	00813483          	ld	s1,8(sp)
    80004d50:	00013903          	ld	s2,0(sp)
    80004d54:	02010113          	addi	sp,sp,32
    80004d58:	00008067          	ret

0000000080004d5c <_ZN6Buffer3getEv>:

int Buffer::get() {
    80004d5c:	fe010113          	addi	sp,sp,-32
    80004d60:	00113c23          	sd	ra,24(sp)
    80004d64:	00813823          	sd	s0,16(sp)
    80004d68:	00913423          	sd	s1,8(sp)
    80004d6c:	01213023          	sd	s2,0(sp)
    80004d70:	02010413          	addi	s0,sp,32
    80004d74:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80004d78:	02053503          	ld	a0,32(a0)
    80004d7c:	ffffc097          	auipc	ra,0xffffc
    80004d80:	774080e7          	jalr	1908(ra) # 800014f0 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80004d84:	0284b503          	ld	a0,40(s1)
    80004d88:	ffffc097          	auipc	ra,0xffffc
    80004d8c:	768080e7          	jalr	1896(ra) # 800014f0 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80004d90:	0084b703          	ld	a4,8(s1)
    80004d94:	0104a783          	lw	a5,16(s1)
    80004d98:	00279693          	slli	a3,a5,0x2
    80004d9c:	00d70733          	add	a4,a4,a3
    80004da0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004da4:	0017879b          	addiw	a5,a5,1
    80004da8:	0004a703          	lw	a4,0(s1)
    80004dac:	02e7e7bb          	remw	a5,a5,a4
    80004db0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80004db4:	0284b503          	ld	a0,40(s1)
    80004db8:	ffffc097          	auipc	ra,0xffffc
    80004dbc:	764080e7          	jalr	1892(ra) # 8000151c <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80004dc0:	0184b503          	ld	a0,24(s1)
    80004dc4:	ffffc097          	auipc	ra,0xffffc
    80004dc8:	758080e7          	jalr	1880(ra) # 8000151c <_Z10sem_signalP4_sem>

    return ret;
}
    80004dcc:	00090513          	mv	a0,s2
    80004dd0:	01813083          	ld	ra,24(sp)
    80004dd4:	01013403          	ld	s0,16(sp)
    80004dd8:	00813483          	ld	s1,8(sp)
    80004ddc:	00013903          	ld	s2,0(sp)
    80004de0:	02010113          	addi	sp,sp,32
    80004de4:	00008067          	ret

0000000080004de8 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80004de8:	fe010113          	addi	sp,sp,-32
    80004dec:	00113c23          	sd	ra,24(sp)
    80004df0:	00813823          	sd	s0,16(sp)
    80004df4:	00913423          	sd	s1,8(sp)
    80004df8:	01213023          	sd	s2,0(sp)
    80004dfc:	02010413          	addi	s0,sp,32
    80004e00:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80004e04:	02853503          	ld	a0,40(a0)
    80004e08:	ffffc097          	auipc	ra,0xffffc
    80004e0c:	6e8080e7          	jalr	1768(ra) # 800014f0 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80004e10:	0304b503          	ld	a0,48(s1)
    80004e14:	ffffc097          	auipc	ra,0xffffc
    80004e18:	6dc080e7          	jalr	1756(ra) # 800014f0 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80004e1c:	0144a783          	lw	a5,20(s1)
    80004e20:	0104a903          	lw	s2,16(s1)
    80004e24:	0327ce63          	blt	a5,s2,80004e60 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80004e28:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80004e2c:	0304b503          	ld	a0,48(s1)
    80004e30:	ffffc097          	auipc	ra,0xffffc
    80004e34:	6ec080e7          	jalr	1772(ra) # 8000151c <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80004e38:	0284b503          	ld	a0,40(s1)
    80004e3c:	ffffc097          	auipc	ra,0xffffc
    80004e40:	6e0080e7          	jalr	1760(ra) # 8000151c <_Z10sem_signalP4_sem>

    return ret;
    80004e44:	00090513          	mv	a0,s2
    80004e48:	01813083          	ld	ra,24(sp)
    80004e4c:	01013403          	ld	s0,16(sp)
    80004e50:	00813483          	ld	s1,8(sp)
    80004e54:	00013903          	ld	s2,0(sp)
    80004e58:	02010113          	addi	sp,sp,32
    80004e5c:	00008067          	ret
        ret = cap - head + tail;
    80004e60:	0004a703          	lw	a4,0(s1)
    80004e64:	4127093b          	subw	s2,a4,s2
    80004e68:	00f9093b          	addw	s2,s2,a5
    80004e6c:	fc1ff06f          	j	80004e2c <_ZN6Buffer6getCntEv+0x44>

0000000080004e70 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80004e70:	fe010113          	addi	sp,sp,-32
    80004e74:	00113c23          	sd	ra,24(sp)
    80004e78:	00813823          	sd	s0,16(sp)
    80004e7c:	00913423          	sd	s1,8(sp)
    80004e80:	02010413          	addi	s0,sp,32
    80004e84:	00050493          	mv	s1,a0
    putc('\n');
    80004e88:	00a00513          	li	a0,10
    80004e8c:	ffffc097          	auipc	ra,0xffffc
    80004e90:	7bc080e7          	jalr	1980(ra) # 80001648 <_Z4putcc>
    printString("Buffer deleted!\n");
    80004e94:	00003517          	auipc	a0,0x3
    80004e98:	39450513          	addi	a0,a0,916 # 80008228 <CONSOLE_STATUS+0x218>
    80004e9c:	fffff097          	auipc	ra,0xfffff
    80004ea0:	0c0080e7          	jalr	192(ra) # 80003f5c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80004ea4:	00048513          	mv	a0,s1
    80004ea8:	00000097          	auipc	ra,0x0
    80004eac:	f40080e7          	jalr	-192(ra) # 80004de8 <_ZN6Buffer6getCntEv>
    80004eb0:	02a05c63          	blez	a0,80004ee8 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80004eb4:	0084b783          	ld	a5,8(s1)
    80004eb8:	0104a703          	lw	a4,16(s1)
    80004ebc:	00271713          	slli	a4,a4,0x2
    80004ec0:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80004ec4:	0007c503          	lbu	a0,0(a5)
    80004ec8:	ffffc097          	auipc	ra,0xffffc
    80004ecc:	780080e7          	jalr	1920(ra) # 80001648 <_Z4putcc>
        head = (head + 1) % cap;
    80004ed0:	0104a783          	lw	a5,16(s1)
    80004ed4:	0017879b          	addiw	a5,a5,1
    80004ed8:	0004a703          	lw	a4,0(s1)
    80004edc:	02e7e7bb          	remw	a5,a5,a4
    80004ee0:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80004ee4:	fc1ff06f          	j	80004ea4 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80004ee8:	02100513          	li	a0,33
    80004eec:	ffffc097          	auipc	ra,0xffffc
    80004ef0:	75c080e7          	jalr	1884(ra) # 80001648 <_Z4putcc>
    putc('\n');
    80004ef4:	00a00513          	li	a0,10
    80004ef8:	ffffc097          	auipc	ra,0xffffc
    80004efc:	750080e7          	jalr	1872(ra) # 80001648 <_Z4putcc>
    mem_free(buffer);
    80004f00:	0084b503          	ld	a0,8(s1)
    80004f04:	ffffc097          	auipc	ra,0xffffc
    80004f08:	494080e7          	jalr	1172(ra) # 80001398 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80004f0c:	0204b503          	ld	a0,32(s1)
    80004f10:	ffffc097          	auipc	ra,0xffffc
    80004f14:	5b4080e7          	jalr	1460(ra) # 800014c4 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80004f18:	0184b503          	ld	a0,24(s1)
    80004f1c:	ffffc097          	auipc	ra,0xffffc
    80004f20:	5a8080e7          	jalr	1448(ra) # 800014c4 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80004f24:	0304b503          	ld	a0,48(s1)
    80004f28:	ffffc097          	auipc	ra,0xffffc
    80004f2c:	59c080e7          	jalr	1436(ra) # 800014c4 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80004f30:	0284b503          	ld	a0,40(s1)
    80004f34:	ffffc097          	auipc	ra,0xffffc
    80004f38:	590080e7          	jalr	1424(ra) # 800014c4 <_Z9sem_closeP4_sem>
}
    80004f3c:	01813083          	ld	ra,24(sp)
    80004f40:	01013403          	ld	s0,16(sp)
    80004f44:	00813483          	ld	s1,8(sp)
    80004f48:	02010113          	addi	sp,sp,32
    80004f4c:	00008067          	ret

0000000080004f50 <start>:
    80004f50:	ff010113          	addi	sp,sp,-16
    80004f54:	00813423          	sd	s0,8(sp)
    80004f58:	01010413          	addi	s0,sp,16
    80004f5c:	300027f3          	csrr	a5,mstatus
    80004f60:	ffffe737          	lui	a4,0xffffe
    80004f64:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffef3af>
    80004f68:	00e7f7b3          	and	a5,a5,a4
    80004f6c:	00001737          	lui	a4,0x1
    80004f70:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80004f74:	00e7e7b3          	or	a5,a5,a4
    80004f78:	30079073          	csrw	mstatus,a5
    80004f7c:	00000797          	auipc	a5,0x0
    80004f80:	16078793          	addi	a5,a5,352 # 800050dc <system_main>
    80004f84:	34179073          	csrw	mepc,a5
    80004f88:	00000793          	li	a5,0
    80004f8c:	18079073          	csrw	satp,a5
    80004f90:	000107b7          	lui	a5,0x10
    80004f94:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80004f98:	30279073          	csrw	medeleg,a5
    80004f9c:	30379073          	csrw	mideleg,a5
    80004fa0:	104027f3          	csrr	a5,sie
    80004fa4:	2227e793          	ori	a5,a5,546
    80004fa8:	10479073          	csrw	sie,a5
    80004fac:	fff00793          	li	a5,-1
    80004fb0:	00a7d793          	srli	a5,a5,0xa
    80004fb4:	3b079073          	csrw	pmpaddr0,a5
    80004fb8:	00f00793          	li	a5,15
    80004fbc:	3a079073          	csrw	pmpcfg0,a5
    80004fc0:	f14027f3          	csrr	a5,mhartid
    80004fc4:	0200c737          	lui	a4,0x200c
    80004fc8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004fcc:	0007869b          	sext.w	a3,a5
    80004fd0:	00269713          	slli	a4,a3,0x2
    80004fd4:	000f4637          	lui	a2,0xf4
    80004fd8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004fdc:	00d70733          	add	a4,a4,a3
    80004fe0:	0037979b          	slliw	a5,a5,0x3
    80004fe4:	020046b7          	lui	a3,0x2004
    80004fe8:	00d787b3          	add	a5,a5,a3
    80004fec:	00c585b3          	add	a1,a1,a2
    80004ff0:	00371693          	slli	a3,a4,0x3
    80004ff4:	00009717          	auipc	a4,0x9
    80004ff8:	1fc70713          	addi	a4,a4,508 # 8000e1f0 <timer_scratch>
    80004ffc:	00b7b023          	sd	a1,0(a5)
    80005000:	00d70733          	add	a4,a4,a3
    80005004:	00f73c23          	sd	a5,24(a4)
    80005008:	02c73023          	sd	a2,32(a4)
    8000500c:	34071073          	csrw	mscratch,a4
    80005010:	00000797          	auipc	a5,0x0
    80005014:	6e078793          	addi	a5,a5,1760 # 800056f0 <timervec>
    80005018:	30579073          	csrw	mtvec,a5
    8000501c:	300027f3          	csrr	a5,mstatus
    80005020:	0087e793          	ori	a5,a5,8
    80005024:	30079073          	csrw	mstatus,a5
    80005028:	304027f3          	csrr	a5,mie
    8000502c:	0807e793          	ori	a5,a5,128
    80005030:	30479073          	csrw	mie,a5
    80005034:	f14027f3          	csrr	a5,mhartid
    80005038:	0007879b          	sext.w	a5,a5
    8000503c:	00078213          	mv	tp,a5
    80005040:	30200073          	mret
    80005044:	00813403          	ld	s0,8(sp)
    80005048:	01010113          	addi	sp,sp,16
    8000504c:	00008067          	ret

0000000080005050 <timerinit>:
    80005050:	ff010113          	addi	sp,sp,-16
    80005054:	00813423          	sd	s0,8(sp)
    80005058:	01010413          	addi	s0,sp,16
    8000505c:	f14027f3          	csrr	a5,mhartid
    80005060:	0200c737          	lui	a4,0x200c
    80005064:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005068:	0007869b          	sext.w	a3,a5
    8000506c:	00269713          	slli	a4,a3,0x2
    80005070:	000f4637          	lui	a2,0xf4
    80005074:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005078:	00d70733          	add	a4,a4,a3
    8000507c:	0037979b          	slliw	a5,a5,0x3
    80005080:	020046b7          	lui	a3,0x2004
    80005084:	00d787b3          	add	a5,a5,a3
    80005088:	00c585b3          	add	a1,a1,a2
    8000508c:	00371693          	slli	a3,a4,0x3
    80005090:	00009717          	auipc	a4,0x9
    80005094:	16070713          	addi	a4,a4,352 # 8000e1f0 <timer_scratch>
    80005098:	00b7b023          	sd	a1,0(a5)
    8000509c:	00d70733          	add	a4,a4,a3
    800050a0:	00f73c23          	sd	a5,24(a4)
    800050a4:	02c73023          	sd	a2,32(a4)
    800050a8:	34071073          	csrw	mscratch,a4
    800050ac:	00000797          	auipc	a5,0x0
    800050b0:	64478793          	addi	a5,a5,1604 # 800056f0 <timervec>
    800050b4:	30579073          	csrw	mtvec,a5
    800050b8:	300027f3          	csrr	a5,mstatus
    800050bc:	0087e793          	ori	a5,a5,8
    800050c0:	30079073          	csrw	mstatus,a5
    800050c4:	304027f3          	csrr	a5,mie
    800050c8:	0807e793          	ori	a5,a5,128
    800050cc:	30479073          	csrw	mie,a5
    800050d0:	00813403          	ld	s0,8(sp)
    800050d4:	01010113          	addi	sp,sp,16
    800050d8:	00008067          	ret

00000000800050dc <system_main>:
    800050dc:	fe010113          	addi	sp,sp,-32
    800050e0:	00813823          	sd	s0,16(sp)
    800050e4:	00913423          	sd	s1,8(sp)
    800050e8:	00113c23          	sd	ra,24(sp)
    800050ec:	02010413          	addi	s0,sp,32
    800050f0:	00000097          	auipc	ra,0x0
    800050f4:	0c4080e7          	jalr	196(ra) # 800051b4 <cpuid>
    800050f8:	00005497          	auipc	s1,0x5
    800050fc:	00848493          	addi	s1,s1,8 # 8000a100 <started>
    80005100:	02050263          	beqz	a0,80005124 <system_main+0x48>
    80005104:	0004a783          	lw	a5,0(s1)
    80005108:	0007879b          	sext.w	a5,a5
    8000510c:	fe078ce3          	beqz	a5,80005104 <system_main+0x28>
    80005110:	0ff0000f          	fence
    80005114:	00003517          	auipc	a0,0x3
    80005118:	25450513          	addi	a0,a0,596 # 80008368 <CONSOLE_STATUS+0x358>
    8000511c:	00001097          	auipc	ra,0x1
    80005120:	a70080e7          	jalr	-1424(ra) # 80005b8c <panic>
    80005124:	00001097          	auipc	ra,0x1
    80005128:	9c4080e7          	jalr	-1596(ra) # 80005ae8 <consoleinit>
    8000512c:	00001097          	auipc	ra,0x1
    80005130:	150080e7          	jalr	336(ra) # 8000627c <printfinit>
    80005134:	00003517          	auipc	a0,0x3
    80005138:	31450513          	addi	a0,a0,788 # 80008448 <CONSOLE_STATUS+0x438>
    8000513c:	00001097          	auipc	ra,0x1
    80005140:	aac080e7          	jalr	-1364(ra) # 80005be8 <__printf>
    80005144:	00003517          	auipc	a0,0x3
    80005148:	1f450513          	addi	a0,a0,500 # 80008338 <CONSOLE_STATUS+0x328>
    8000514c:	00001097          	auipc	ra,0x1
    80005150:	a9c080e7          	jalr	-1380(ra) # 80005be8 <__printf>
    80005154:	00003517          	auipc	a0,0x3
    80005158:	2f450513          	addi	a0,a0,756 # 80008448 <CONSOLE_STATUS+0x438>
    8000515c:	00001097          	auipc	ra,0x1
    80005160:	a8c080e7          	jalr	-1396(ra) # 80005be8 <__printf>
    80005164:	00001097          	auipc	ra,0x1
    80005168:	4a4080e7          	jalr	1188(ra) # 80006608 <kinit>
    8000516c:	00000097          	auipc	ra,0x0
    80005170:	148080e7          	jalr	328(ra) # 800052b4 <trapinit>
    80005174:	00000097          	auipc	ra,0x0
    80005178:	16c080e7          	jalr	364(ra) # 800052e0 <trapinithart>
    8000517c:	00000097          	auipc	ra,0x0
    80005180:	5b4080e7          	jalr	1460(ra) # 80005730 <plicinit>
    80005184:	00000097          	auipc	ra,0x0
    80005188:	5d4080e7          	jalr	1492(ra) # 80005758 <plicinithart>
    8000518c:	00000097          	auipc	ra,0x0
    80005190:	078080e7          	jalr	120(ra) # 80005204 <userinit>
    80005194:	0ff0000f          	fence
    80005198:	00100793          	li	a5,1
    8000519c:	00003517          	auipc	a0,0x3
    800051a0:	1b450513          	addi	a0,a0,436 # 80008350 <CONSOLE_STATUS+0x340>
    800051a4:	00f4a023          	sw	a5,0(s1)
    800051a8:	00001097          	auipc	ra,0x1
    800051ac:	a40080e7          	jalr	-1472(ra) # 80005be8 <__printf>
    800051b0:	0000006f          	j	800051b0 <system_main+0xd4>

00000000800051b4 <cpuid>:
    800051b4:	ff010113          	addi	sp,sp,-16
    800051b8:	00813423          	sd	s0,8(sp)
    800051bc:	01010413          	addi	s0,sp,16
    800051c0:	00020513          	mv	a0,tp
    800051c4:	00813403          	ld	s0,8(sp)
    800051c8:	0005051b          	sext.w	a0,a0
    800051cc:	01010113          	addi	sp,sp,16
    800051d0:	00008067          	ret

00000000800051d4 <mycpu>:
    800051d4:	ff010113          	addi	sp,sp,-16
    800051d8:	00813423          	sd	s0,8(sp)
    800051dc:	01010413          	addi	s0,sp,16
    800051e0:	00020793          	mv	a5,tp
    800051e4:	00813403          	ld	s0,8(sp)
    800051e8:	0007879b          	sext.w	a5,a5
    800051ec:	00779793          	slli	a5,a5,0x7
    800051f0:	0000a517          	auipc	a0,0xa
    800051f4:	03050513          	addi	a0,a0,48 # 8000f220 <cpus>
    800051f8:	00f50533          	add	a0,a0,a5
    800051fc:	01010113          	addi	sp,sp,16
    80005200:	00008067          	ret

0000000080005204 <userinit>:
    80005204:	ff010113          	addi	sp,sp,-16
    80005208:	00813423          	sd	s0,8(sp)
    8000520c:	01010413          	addi	s0,sp,16
    80005210:	00813403          	ld	s0,8(sp)
    80005214:	01010113          	addi	sp,sp,16
    80005218:	ffffe317          	auipc	t1,0xffffe
    8000521c:	9c430067          	jr	-1596(t1) # 80002bdc <main>

0000000080005220 <either_copyout>:
    80005220:	ff010113          	addi	sp,sp,-16
    80005224:	00813023          	sd	s0,0(sp)
    80005228:	00113423          	sd	ra,8(sp)
    8000522c:	01010413          	addi	s0,sp,16
    80005230:	02051663          	bnez	a0,8000525c <either_copyout+0x3c>
    80005234:	00058513          	mv	a0,a1
    80005238:	00060593          	mv	a1,a2
    8000523c:	0006861b          	sext.w	a2,a3
    80005240:	00002097          	auipc	ra,0x2
    80005244:	c54080e7          	jalr	-940(ra) # 80006e94 <__memmove>
    80005248:	00813083          	ld	ra,8(sp)
    8000524c:	00013403          	ld	s0,0(sp)
    80005250:	00000513          	li	a0,0
    80005254:	01010113          	addi	sp,sp,16
    80005258:	00008067          	ret
    8000525c:	00003517          	auipc	a0,0x3
    80005260:	13450513          	addi	a0,a0,308 # 80008390 <CONSOLE_STATUS+0x380>
    80005264:	00001097          	auipc	ra,0x1
    80005268:	928080e7          	jalr	-1752(ra) # 80005b8c <panic>

000000008000526c <either_copyin>:
    8000526c:	ff010113          	addi	sp,sp,-16
    80005270:	00813023          	sd	s0,0(sp)
    80005274:	00113423          	sd	ra,8(sp)
    80005278:	01010413          	addi	s0,sp,16
    8000527c:	02059463          	bnez	a1,800052a4 <either_copyin+0x38>
    80005280:	00060593          	mv	a1,a2
    80005284:	0006861b          	sext.w	a2,a3
    80005288:	00002097          	auipc	ra,0x2
    8000528c:	c0c080e7          	jalr	-1012(ra) # 80006e94 <__memmove>
    80005290:	00813083          	ld	ra,8(sp)
    80005294:	00013403          	ld	s0,0(sp)
    80005298:	00000513          	li	a0,0
    8000529c:	01010113          	addi	sp,sp,16
    800052a0:	00008067          	ret
    800052a4:	00003517          	auipc	a0,0x3
    800052a8:	11450513          	addi	a0,a0,276 # 800083b8 <CONSOLE_STATUS+0x3a8>
    800052ac:	00001097          	auipc	ra,0x1
    800052b0:	8e0080e7          	jalr	-1824(ra) # 80005b8c <panic>

00000000800052b4 <trapinit>:
    800052b4:	ff010113          	addi	sp,sp,-16
    800052b8:	00813423          	sd	s0,8(sp)
    800052bc:	01010413          	addi	s0,sp,16
    800052c0:	00813403          	ld	s0,8(sp)
    800052c4:	00003597          	auipc	a1,0x3
    800052c8:	11c58593          	addi	a1,a1,284 # 800083e0 <CONSOLE_STATUS+0x3d0>
    800052cc:	0000a517          	auipc	a0,0xa
    800052d0:	fd450513          	addi	a0,a0,-44 # 8000f2a0 <tickslock>
    800052d4:	01010113          	addi	sp,sp,16
    800052d8:	00001317          	auipc	t1,0x1
    800052dc:	5c030067          	jr	1472(t1) # 80006898 <initlock>

00000000800052e0 <trapinithart>:
    800052e0:	ff010113          	addi	sp,sp,-16
    800052e4:	00813423          	sd	s0,8(sp)
    800052e8:	01010413          	addi	s0,sp,16
    800052ec:	00000797          	auipc	a5,0x0
    800052f0:	2f478793          	addi	a5,a5,756 # 800055e0 <kernelvec>
    800052f4:	10579073          	csrw	stvec,a5
    800052f8:	00813403          	ld	s0,8(sp)
    800052fc:	01010113          	addi	sp,sp,16
    80005300:	00008067          	ret

0000000080005304 <usertrap>:
    80005304:	ff010113          	addi	sp,sp,-16
    80005308:	00813423          	sd	s0,8(sp)
    8000530c:	01010413          	addi	s0,sp,16
    80005310:	00813403          	ld	s0,8(sp)
    80005314:	01010113          	addi	sp,sp,16
    80005318:	00008067          	ret

000000008000531c <usertrapret>:
    8000531c:	ff010113          	addi	sp,sp,-16
    80005320:	00813423          	sd	s0,8(sp)
    80005324:	01010413          	addi	s0,sp,16
    80005328:	00813403          	ld	s0,8(sp)
    8000532c:	01010113          	addi	sp,sp,16
    80005330:	00008067          	ret

0000000080005334 <kerneltrap>:
    80005334:	fe010113          	addi	sp,sp,-32
    80005338:	00813823          	sd	s0,16(sp)
    8000533c:	00113c23          	sd	ra,24(sp)
    80005340:	00913423          	sd	s1,8(sp)
    80005344:	02010413          	addi	s0,sp,32
    80005348:	142025f3          	csrr	a1,scause
    8000534c:	100027f3          	csrr	a5,sstatus
    80005350:	0027f793          	andi	a5,a5,2
    80005354:	10079c63          	bnez	a5,8000546c <kerneltrap+0x138>
    80005358:	142027f3          	csrr	a5,scause
    8000535c:	0207ce63          	bltz	a5,80005398 <kerneltrap+0x64>
    80005360:	00003517          	auipc	a0,0x3
    80005364:	0c850513          	addi	a0,a0,200 # 80008428 <CONSOLE_STATUS+0x418>
    80005368:	00001097          	auipc	ra,0x1
    8000536c:	880080e7          	jalr	-1920(ra) # 80005be8 <__printf>
    80005370:	141025f3          	csrr	a1,sepc
    80005374:	14302673          	csrr	a2,stval
    80005378:	00003517          	auipc	a0,0x3
    8000537c:	0c050513          	addi	a0,a0,192 # 80008438 <CONSOLE_STATUS+0x428>
    80005380:	00001097          	auipc	ra,0x1
    80005384:	868080e7          	jalr	-1944(ra) # 80005be8 <__printf>
    80005388:	00003517          	auipc	a0,0x3
    8000538c:	0c850513          	addi	a0,a0,200 # 80008450 <CONSOLE_STATUS+0x440>
    80005390:	00000097          	auipc	ra,0x0
    80005394:	7fc080e7          	jalr	2044(ra) # 80005b8c <panic>
    80005398:	0ff7f713          	andi	a4,a5,255
    8000539c:	00900693          	li	a3,9
    800053a0:	04d70063          	beq	a4,a3,800053e0 <kerneltrap+0xac>
    800053a4:	fff00713          	li	a4,-1
    800053a8:	03f71713          	slli	a4,a4,0x3f
    800053ac:	00170713          	addi	a4,a4,1
    800053b0:	fae798e3          	bne	a5,a4,80005360 <kerneltrap+0x2c>
    800053b4:	00000097          	auipc	ra,0x0
    800053b8:	e00080e7          	jalr	-512(ra) # 800051b4 <cpuid>
    800053bc:	06050663          	beqz	a0,80005428 <kerneltrap+0xf4>
    800053c0:	144027f3          	csrr	a5,sip
    800053c4:	ffd7f793          	andi	a5,a5,-3
    800053c8:	14479073          	csrw	sip,a5
    800053cc:	01813083          	ld	ra,24(sp)
    800053d0:	01013403          	ld	s0,16(sp)
    800053d4:	00813483          	ld	s1,8(sp)
    800053d8:	02010113          	addi	sp,sp,32
    800053dc:	00008067          	ret
    800053e0:	00000097          	auipc	ra,0x0
    800053e4:	3c4080e7          	jalr	964(ra) # 800057a4 <plic_claim>
    800053e8:	00a00793          	li	a5,10
    800053ec:	00050493          	mv	s1,a0
    800053f0:	06f50863          	beq	a0,a5,80005460 <kerneltrap+0x12c>
    800053f4:	fc050ce3          	beqz	a0,800053cc <kerneltrap+0x98>
    800053f8:	00050593          	mv	a1,a0
    800053fc:	00003517          	auipc	a0,0x3
    80005400:	00c50513          	addi	a0,a0,12 # 80008408 <CONSOLE_STATUS+0x3f8>
    80005404:	00000097          	auipc	ra,0x0
    80005408:	7e4080e7          	jalr	2020(ra) # 80005be8 <__printf>
    8000540c:	01013403          	ld	s0,16(sp)
    80005410:	01813083          	ld	ra,24(sp)
    80005414:	00048513          	mv	a0,s1
    80005418:	00813483          	ld	s1,8(sp)
    8000541c:	02010113          	addi	sp,sp,32
    80005420:	00000317          	auipc	t1,0x0
    80005424:	3bc30067          	jr	956(t1) # 800057dc <plic_complete>
    80005428:	0000a517          	auipc	a0,0xa
    8000542c:	e7850513          	addi	a0,a0,-392 # 8000f2a0 <tickslock>
    80005430:	00001097          	auipc	ra,0x1
    80005434:	48c080e7          	jalr	1164(ra) # 800068bc <acquire>
    80005438:	00005717          	auipc	a4,0x5
    8000543c:	ccc70713          	addi	a4,a4,-820 # 8000a104 <ticks>
    80005440:	00072783          	lw	a5,0(a4)
    80005444:	0000a517          	auipc	a0,0xa
    80005448:	e5c50513          	addi	a0,a0,-420 # 8000f2a0 <tickslock>
    8000544c:	0017879b          	addiw	a5,a5,1
    80005450:	00f72023          	sw	a5,0(a4)
    80005454:	00001097          	auipc	ra,0x1
    80005458:	534080e7          	jalr	1332(ra) # 80006988 <release>
    8000545c:	f65ff06f          	j	800053c0 <kerneltrap+0x8c>
    80005460:	00001097          	auipc	ra,0x1
    80005464:	090080e7          	jalr	144(ra) # 800064f0 <uartintr>
    80005468:	fa5ff06f          	j	8000540c <kerneltrap+0xd8>
    8000546c:	00003517          	auipc	a0,0x3
    80005470:	f7c50513          	addi	a0,a0,-132 # 800083e8 <CONSOLE_STATUS+0x3d8>
    80005474:	00000097          	auipc	ra,0x0
    80005478:	718080e7          	jalr	1816(ra) # 80005b8c <panic>

000000008000547c <clockintr>:
    8000547c:	fe010113          	addi	sp,sp,-32
    80005480:	00813823          	sd	s0,16(sp)
    80005484:	00913423          	sd	s1,8(sp)
    80005488:	00113c23          	sd	ra,24(sp)
    8000548c:	02010413          	addi	s0,sp,32
    80005490:	0000a497          	auipc	s1,0xa
    80005494:	e1048493          	addi	s1,s1,-496 # 8000f2a0 <tickslock>
    80005498:	00048513          	mv	a0,s1
    8000549c:	00001097          	auipc	ra,0x1
    800054a0:	420080e7          	jalr	1056(ra) # 800068bc <acquire>
    800054a4:	00005717          	auipc	a4,0x5
    800054a8:	c6070713          	addi	a4,a4,-928 # 8000a104 <ticks>
    800054ac:	00072783          	lw	a5,0(a4)
    800054b0:	01013403          	ld	s0,16(sp)
    800054b4:	01813083          	ld	ra,24(sp)
    800054b8:	00048513          	mv	a0,s1
    800054bc:	0017879b          	addiw	a5,a5,1
    800054c0:	00813483          	ld	s1,8(sp)
    800054c4:	00f72023          	sw	a5,0(a4)
    800054c8:	02010113          	addi	sp,sp,32
    800054cc:	00001317          	auipc	t1,0x1
    800054d0:	4bc30067          	jr	1212(t1) # 80006988 <release>

00000000800054d4 <devintr>:
    800054d4:	142027f3          	csrr	a5,scause
    800054d8:	00000513          	li	a0,0
    800054dc:	0007c463          	bltz	a5,800054e4 <devintr+0x10>
    800054e0:	00008067          	ret
    800054e4:	fe010113          	addi	sp,sp,-32
    800054e8:	00813823          	sd	s0,16(sp)
    800054ec:	00113c23          	sd	ra,24(sp)
    800054f0:	00913423          	sd	s1,8(sp)
    800054f4:	02010413          	addi	s0,sp,32
    800054f8:	0ff7f713          	andi	a4,a5,255
    800054fc:	00900693          	li	a3,9
    80005500:	04d70c63          	beq	a4,a3,80005558 <devintr+0x84>
    80005504:	fff00713          	li	a4,-1
    80005508:	03f71713          	slli	a4,a4,0x3f
    8000550c:	00170713          	addi	a4,a4,1
    80005510:	00e78c63          	beq	a5,a4,80005528 <devintr+0x54>
    80005514:	01813083          	ld	ra,24(sp)
    80005518:	01013403          	ld	s0,16(sp)
    8000551c:	00813483          	ld	s1,8(sp)
    80005520:	02010113          	addi	sp,sp,32
    80005524:	00008067          	ret
    80005528:	00000097          	auipc	ra,0x0
    8000552c:	c8c080e7          	jalr	-884(ra) # 800051b4 <cpuid>
    80005530:	06050663          	beqz	a0,8000559c <devintr+0xc8>
    80005534:	144027f3          	csrr	a5,sip
    80005538:	ffd7f793          	andi	a5,a5,-3
    8000553c:	14479073          	csrw	sip,a5
    80005540:	01813083          	ld	ra,24(sp)
    80005544:	01013403          	ld	s0,16(sp)
    80005548:	00813483          	ld	s1,8(sp)
    8000554c:	00200513          	li	a0,2
    80005550:	02010113          	addi	sp,sp,32
    80005554:	00008067          	ret
    80005558:	00000097          	auipc	ra,0x0
    8000555c:	24c080e7          	jalr	588(ra) # 800057a4 <plic_claim>
    80005560:	00a00793          	li	a5,10
    80005564:	00050493          	mv	s1,a0
    80005568:	06f50663          	beq	a0,a5,800055d4 <devintr+0x100>
    8000556c:	00100513          	li	a0,1
    80005570:	fa0482e3          	beqz	s1,80005514 <devintr+0x40>
    80005574:	00048593          	mv	a1,s1
    80005578:	00003517          	auipc	a0,0x3
    8000557c:	e9050513          	addi	a0,a0,-368 # 80008408 <CONSOLE_STATUS+0x3f8>
    80005580:	00000097          	auipc	ra,0x0
    80005584:	668080e7          	jalr	1640(ra) # 80005be8 <__printf>
    80005588:	00048513          	mv	a0,s1
    8000558c:	00000097          	auipc	ra,0x0
    80005590:	250080e7          	jalr	592(ra) # 800057dc <plic_complete>
    80005594:	00100513          	li	a0,1
    80005598:	f7dff06f          	j	80005514 <devintr+0x40>
    8000559c:	0000a517          	auipc	a0,0xa
    800055a0:	d0450513          	addi	a0,a0,-764 # 8000f2a0 <tickslock>
    800055a4:	00001097          	auipc	ra,0x1
    800055a8:	318080e7          	jalr	792(ra) # 800068bc <acquire>
    800055ac:	00005717          	auipc	a4,0x5
    800055b0:	b5870713          	addi	a4,a4,-1192 # 8000a104 <ticks>
    800055b4:	00072783          	lw	a5,0(a4)
    800055b8:	0000a517          	auipc	a0,0xa
    800055bc:	ce850513          	addi	a0,a0,-792 # 8000f2a0 <tickslock>
    800055c0:	0017879b          	addiw	a5,a5,1
    800055c4:	00f72023          	sw	a5,0(a4)
    800055c8:	00001097          	auipc	ra,0x1
    800055cc:	3c0080e7          	jalr	960(ra) # 80006988 <release>
    800055d0:	f65ff06f          	j	80005534 <devintr+0x60>
    800055d4:	00001097          	auipc	ra,0x1
    800055d8:	f1c080e7          	jalr	-228(ra) # 800064f0 <uartintr>
    800055dc:	fadff06f          	j	80005588 <devintr+0xb4>

00000000800055e0 <kernelvec>:
    800055e0:	f0010113          	addi	sp,sp,-256
    800055e4:	00113023          	sd	ra,0(sp)
    800055e8:	00213423          	sd	sp,8(sp)
    800055ec:	00313823          	sd	gp,16(sp)
    800055f0:	00413c23          	sd	tp,24(sp)
    800055f4:	02513023          	sd	t0,32(sp)
    800055f8:	02613423          	sd	t1,40(sp)
    800055fc:	02713823          	sd	t2,48(sp)
    80005600:	02813c23          	sd	s0,56(sp)
    80005604:	04913023          	sd	s1,64(sp)
    80005608:	04a13423          	sd	a0,72(sp)
    8000560c:	04b13823          	sd	a1,80(sp)
    80005610:	04c13c23          	sd	a2,88(sp)
    80005614:	06d13023          	sd	a3,96(sp)
    80005618:	06e13423          	sd	a4,104(sp)
    8000561c:	06f13823          	sd	a5,112(sp)
    80005620:	07013c23          	sd	a6,120(sp)
    80005624:	09113023          	sd	a7,128(sp)
    80005628:	09213423          	sd	s2,136(sp)
    8000562c:	09313823          	sd	s3,144(sp)
    80005630:	09413c23          	sd	s4,152(sp)
    80005634:	0b513023          	sd	s5,160(sp)
    80005638:	0b613423          	sd	s6,168(sp)
    8000563c:	0b713823          	sd	s7,176(sp)
    80005640:	0b813c23          	sd	s8,184(sp)
    80005644:	0d913023          	sd	s9,192(sp)
    80005648:	0da13423          	sd	s10,200(sp)
    8000564c:	0db13823          	sd	s11,208(sp)
    80005650:	0dc13c23          	sd	t3,216(sp)
    80005654:	0fd13023          	sd	t4,224(sp)
    80005658:	0fe13423          	sd	t5,232(sp)
    8000565c:	0ff13823          	sd	t6,240(sp)
    80005660:	cd5ff0ef          	jal	ra,80005334 <kerneltrap>
    80005664:	00013083          	ld	ra,0(sp)
    80005668:	00813103          	ld	sp,8(sp)
    8000566c:	01013183          	ld	gp,16(sp)
    80005670:	02013283          	ld	t0,32(sp)
    80005674:	02813303          	ld	t1,40(sp)
    80005678:	03013383          	ld	t2,48(sp)
    8000567c:	03813403          	ld	s0,56(sp)
    80005680:	04013483          	ld	s1,64(sp)
    80005684:	04813503          	ld	a0,72(sp)
    80005688:	05013583          	ld	a1,80(sp)
    8000568c:	05813603          	ld	a2,88(sp)
    80005690:	06013683          	ld	a3,96(sp)
    80005694:	06813703          	ld	a4,104(sp)
    80005698:	07013783          	ld	a5,112(sp)
    8000569c:	07813803          	ld	a6,120(sp)
    800056a0:	08013883          	ld	a7,128(sp)
    800056a4:	08813903          	ld	s2,136(sp)
    800056a8:	09013983          	ld	s3,144(sp)
    800056ac:	09813a03          	ld	s4,152(sp)
    800056b0:	0a013a83          	ld	s5,160(sp)
    800056b4:	0a813b03          	ld	s6,168(sp)
    800056b8:	0b013b83          	ld	s7,176(sp)
    800056bc:	0b813c03          	ld	s8,184(sp)
    800056c0:	0c013c83          	ld	s9,192(sp)
    800056c4:	0c813d03          	ld	s10,200(sp)
    800056c8:	0d013d83          	ld	s11,208(sp)
    800056cc:	0d813e03          	ld	t3,216(sp)
    800056d0:	0e013e83          	ld	t4,224(sp)
    800056d4:	0e813f03          	ld	t5,232(sp)
    800056d8:	0f013f83          	ld	t6,240(sp)
    800056dc:	10010113          	addi	sp,sp,256
    800056e0:	10200073          	sret
    800056e4:	00000013          	nop
    800056e8:	00000013          	nop
    800056ec:	00000013          	nop

00000000800056f0 <timervec>:
    800056f0:	34051573          	csrrw	a0,mscratch,a0
    800056f4:	00b53023          	sd	a1,0(a0)
    800056f8:	00c53423          	sd	a2,8(a0)
    800056fc:	00d53823          	sd	a3,16(a0)
    80005700:	01853583          	ld	a1,24(a0)
    80005704:	02053603          	ld	a2,32(a0)
    80005708:	0005b683          	ld	a3,0(a1)
    8000570c:	00c686b3          	add	a3,a3,a2
    80005710:	00d5b023          	sd	a3,0(a1)
    80005714:	00200593          	li	a1,2
    80005718:	14459073          	csrw	sip,a1
    8000571c:	01053683          	ld	a3,16(a0)
    80005720:	00853603          	ld	a2,8(a0)
    80005724:	00053583          	ld	a1,0(a0)
    80005728:	34051573          	csrrw	a0,mscratch,a0
    8000572c:	30200073          	mret

0000000080005730 <plicinit>:
    80005730:	ff010113          	addi	sp,sp,-16
    80005734:	00813423          	sd	s0,8(sp)
    80005738:	01010413          	addi	s0,sp,16
    8000573c:	00813403          	ld	s0,8(sp)
    80005740:	0c0007b7          	lui	a5,0xc000
    80005744:	00100713          	li	a4,1
    80005748:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000574c:	00e7a223          	sw	a4,4(a5)
    80005750:	01010113          	addi	sp,sp,16
    80005754:	00008067          	ret

0000000080005758 <plicinithart>:
    80005758:	ff010113          	addi	sp,sp,-16
    8000575c:	00813023          	sd	s0,0(sp)
    80005760:	00113423          	sd	ra,8(sp)
    80005764:	01010413          	addi	s0,sp,16
    80005768:	00000097          	auipc	ra,0x0
    8000576c:	a4c080e7          	jalr	-1460(ra) # 800051b4 <cpuid>
    80005770:	0085171b          	slliw	a4,a0,0x8
    80005774:	0c0027b7          	lui	a5,0xc002
    80005778:	00e787b3          	add	a5,a5,a4
    8000577c:	40200713          	li	a4,1026
    80005780:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80005784:	00813083          	ld	ra,8(sp)
    80005788:	00013403          	ld	s0,0(sp)
    8000578c:	00d5151b          	slliw	a0,a0,0xd
    80005790:	0c2017b7          	lui	a5,0xc201
    80005794:	00a78533          	add	a0,a5,a0
    80005798:	00052023          	sw	zero,0(a0)
    8000579c:	01010113          	addi	sp,sp,16
    800057a0:	00008067          	ret

00000000800057a4 <plic_claim>:
    800057a4:	ff010113          	addi	sp,sp,-16
    800057a8:	00813023          	sd	s0,0(sp)
    800057ac:	00113423          	sd	ra,8(sp)
    800057b0:	01010413          	addi	s0,sp,16
    800057b4:	00000097          	auipc	ra,0x0
    800057b8:	a00080e7          	jalr	-1536(ra) # 800051b4 <cpuid>
    800057bc:	00813083          	ld	ra,8(sp)
    800057c0:	00013403          	ld	s0,0(sp)
    800057c4:	00d5151b          	slliw	a0,a0,0xd
    800057c8:	0c2017b7          	lui	a5,0xc201
    800057cc:	00a78533          	add	a0,a5,a0
    800057d0:	00452503          	lw	a0,4(a0)
    800057d4:	01010113          	addi	sp,sp,16
    800057d8:	00008067          	ret

00000000800057dc <plic_complete>:
    800057dc:	fe010113          	addi	sp,sp,-32
    800057e0:	00813823          	sd	s0,16(sp)
    800057e4:	00913423          	sd	s1,8(sp)
    800057e8:	00113c23          	sd	ra,24(sp)
    800057ec:	02010413          	addi	s0,sp,32
    800057f0:	00050493          	mv	s1,a0
    800057f4:	00000097          	auipc	ra,0x0
    800057f8:	9c0080e7          	jalr	-1600(ra) # 800051b4 <cpuid>
    800057fc:	01813083          	ld	ra,24(sp)
    80005800:	01013403          	ld	s0,16(sp)
    80005804:	00d5179b          	slliw	a5,a0,0xd
    80005808:	0c201737          	lui	a4,0xc201
    8000580c:	00f707b3          	add	a5,a4,a5
    80005810:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80005814:	00813483          	ld	s1,8(sp)
    80005818:	02010113          	addi	sp,sp,32
    8000581c:	00008067          	ret

0000000080005820 <consolewrite>:
    80005820:	fb010113          	addi	sp,sp,-80
    80005824:	04813023          	sd	s0,64(sp)
    80005828:	04113423          	sd	ra,72(sp)
    8000582c:	02913c23          	sd	s1,56(sp)
    80005830:	03213823          	sd	s2,48(sp)
    80005834:	03313423          	sd	s3,40(sp)
    80005838:	03413023          	sd	s4,32(sp)
    8000583c:	01513c23          	sd	s5,24(sp)
    80005840:	05010413          	addi	s0,sp,80
    80005844:	06c05c63          	blez	a2,800058bc <consolewrite+0x9c>
    80005848:	00060993          	mv	s3,a2
    8000584c:	00050a13          	mv	s4,a0
    80005850:	00058493          	mv	s1,a1
    80005854:	00000913          	li	s2,0
    80005858:	fff00a93          	li	s5,-1
    8000585c:	01c0006f          	j	80005878 <consolewrite+0x58>
    80005860:	fbf44503          	lbu	a0,-65(s0)
    80005864:	0019091b          	addiw	s2,s2,1
    80005868:	00148493          	addi	s1,s1,1
    8000586c:	00001097          	auipc	ra,0x1
    80005870:	a9c080e7          	jalr	-1380(ra) # 80006308 <uartputc>
    80005874:	03298063          	beq	s3,s2,80005894 <consolewrite+0x74>
    80005878:	00048613          	mv	a2,s1
    8000587c:	00100693          	li	a3,1
    80005880:	000a0593          	mv	a1,s4
    80005884:	fbf40513          	addi	a0,s0,-65
    80005888:	00000097          	auipc	ra,0x0
    8000588c:	9e4080e7          	jalr	-1564(ra) # 8000526c <either_copyin>
    80005890:	fd5518e3          	bne	a0,s5,80005860 <consolewrite+0x40>
    80005894:	04813083          	ld	ra,72(sp)
    80005898:	04013403          	ld	s0,64(sp)
    8000589c:	03813483          	ld	s1,56(sp)
    800058a0:	02813983          	ld	s3,40(sp)
    800058a4:	02013a03          	ld	s4,32(sp)
    800058a8:	01813a83          	ld	s5,24(sp)
    800058ac:	00090513          	mv	a0,s2
    800058b0:	03013903          	ld	s2,48(sp)
    800058b4:	05010113          	addi	sp,sp,80
    800058b8:	00008067          	ret
    800058bc:	00000913          	li	s2,0
    800058c0:	fd5ff06f          	j	80005894 <consolewrite+0x74>

00000000800058c4 <consoleread>:
    800058c4:	f9010113          	addi	sp,sp,-112
    800058c8:	06813023          	sd	s0,96(sp)
    800058cc:	04913c23          	sd	s1,88(sp)
    800058d0:	05213823          	sd	s2,80(sp)
    800058d4:	05313423          	sd	s3,72(sp)
    800058d8:	05413023          	sd	s4,64(sp)
    800058dc:	03513c23          	sd	s5,56(sp)
    800058e0:	03613823          	sd	s6,48(sp)
    800058e4:	03713423          	sd	s7,40(sp)
    800058e8:	03813023          	sd	s8,32(sp)
    800058ec:	06113423          	sd	ra,104(sp)
    800058f0:	01913c23          	sd	s9,24(sp)
    800058f4:	07010413          	addi	s0,sp,112
    800058f8:	00060b93          	mv	s7,a2
    800058fc:	00050913          	mv	s2,a0
    80005900:	00058c13          	mv	s8,a1
    80005904:	00060b1b          	sext.w	s6,a2
    80005908:	0000a497          	auipc	s1,0xa
    8000590c:	9c048493          	addi	s1,s1,-1600 # 8000f2c8 <cons>
    80005910:	00400993          	li	s3,4
    80005914:	fff00a13          	li	s4,-1
    80005918:	00a00a93          	li	s5,10
    8000591c:	05705e63          	blez	s7,80005978 <consoleread+0xb4>
    80005920:	09c4a703          	lw	a4,156(s1)
    80005924:	0984a783          	lw	a5,152(s1)
    80005928:	0007071b          	sext.w	a4,a4
    8000592c:	08e78463          	beq	a5,a4,800059b4 <consoleread+0xf0>
    80005930:	07f7f713          	andi	a4,a5,127
    80005934:	00e48733          	add	a4,s1,a4
    80005938:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000593c:	0017869b          	addiw	a3,a5,1
    80005940:	08d4ac23          	sw	a3,152(s1)
    80005944:	00070c9b          	sext.w	s9,a4
    80005948:	0b370663          	beq	a4,s3,800059f4 <consoleread+0x130>
    8000594c:	00100693          	li	a3,1
    80005950:	f9f40613          	addi	a2,s0,-97
    80005954:	000c0593          	mv	a1,s8
    80005958:	00090513          	mv	a0,s2
    8000595c:	f8e40fa3          	sb	a4,-97(s0)
    80005960:	00000097          	auipc	ra,0x0
    80005964:	8c0080e7          	jalr	-1856(ra) # 80005220 <either_copyout>
    80005968:	01450863          	beq	a0,s4,80005978 <consoleread+0xb4>
    8000596c:	001c0c13          	addi	s8,s8,1
    80005970:	fffb8b9b          	addiw	s7,s7,-1
    80005974:	fb5c94e3          	bne	s9,s5,8000591c <consoleread+0x58>
    80005978:	000b851b          	sext.w	a0,s7
    8000597c:	06813083          	ld	ra,104(sp)
    80005980:	06013403          	ld	s0,96(sp)
    80005984:	05813483          	ld	s1,88(sp)
    80005988:	05013903          	ld	s2,80(sp)
    8000598c:	04813983          	ld	s3,72(sp)
    80005990:	04013a03          	ld	s4,64(sp)
    80005994:	03813a83          	ld	s5,56(sp)
    80005998:	02813b83          	ld	s7,40(sp)
    8000599c:	02013c03          	ld	s8,32(sp)
    800059a0:	01813c83          	ld	s9,24(sp)
    800059a4:	40ab053b          	subw	a0,s6,a0
    800059a8:	03013b03          	ld	s6,48(sp)
    800059ac:	07010113          	addi	sp,sp,112
    800059b0:	00008067          	ret
    800059b4:	00001097          	auipc	ra,0x1
    800059b8:	1d8080e7          	jalr	472(ra) # 80006b8c <push_on>
    800059bc:	0984a703          	lw	a4,152(s1)
    800059c0:	09c4a783          	lw	a5,156(s1)
    800059c4:	0007879b          	sext.w	a5,a5
    800059c8:	fef70ce3          	beq	a4,a5,800059c0 <consoleread+0xfc>
    800059cc:	00001097          	auipc	ra,0x1
    800059d0:	234080e7          	jalr	564(ra) # 80006c00 <pop_on>
    800059d4:	0984a783          	lw	a5,152(s1)
    800059d8:	07f7f713          	andi	a4,a5,127
    800059dc:	00e48733          	add	a4,s1,a4
    800059e0:	01874703          	lbu	a4,24(a4)
    800059e4:	0017869b          	addiw	a3,a5,1
    800059e8:	08d4ac23          	sw	a3,152(s1)
    800059ec:	00070c9b          	sext.w	s9,a4
    800059f0:	f5371ee3          	bne	a4,s3,8000594c <consoleread+0x88>
    800059f4:	000b851b          	sext.w	a0,s7
    800059f8:	f96bf2e3          	bgeu	s7,s6,8000597c <consoleread+0xb8>
    800059fc:	08f4ac23          	sw	a5,152(s1)
    80005a00:	f7dff06f          	j	8000597c <consoleread+0xb8>

0000000080005a04 <consputc>:
    80005a04:	10000793          	li	a5,256
    80005a08:	00f50663          	beq	a0,a5,80005a14 <consputc+0x10>
    80005a0c:	00001317          	auipc	t1,0x1
    80005a10:	9f430067          	jr	-1548(t1) # 80006400 <uartputc_sync>
    80005a14:	ff010113          	addi	sp,sp,-16
    80005a18:	00113423          	sd	ra,8(sp)
    80005a1c:	00813023          	sd	s0,0(sp)
    80005a20:	01010413          	addi	s0,sp,16
    80005a24:	00800513          	li	a0,8
    80005a28:	00001097          	auipc	ra,0x1
    80005a2c:	9d8080e7          	jalr	-1576(ra) # 80006400 <uartputc_sync>
    80005a30:	02000513          	li	a0,32
    80005a34:	00001097          	auipc	ra,0x1
    80005a38:	9cc080e7          	jalr	-1588(ra) # 80006400 <uartputc_sync>
    80005a3c:	00013403          	ld	s0,0(sp)
    80005a40:	00813083          	ld	ra,8(sp)
    80005a44:	00800513          	li	a0,8
    80005a48:	01010113          	addi	sp,sp,16
    80005a4c:	00001317          	auipc	t1,0x1
    80005a50:	9b430067          	jr	-1612(t1) # 80006400 <uartputc_sync>

0000000080005a54 <consoleintr>:
    80005a54:	fe010113          	addi	sp,sp,-32
    80005a58:	00813823          	sd	s0,16(sp)
    80005a5c:	00913423          	sd	s1,8(sp)
    80005a60:	01213023          	sd	s2,0(sp)
    80005a64:	00113c23          	sd	ra,24(sp)
    80005a68:	02010413          	addi	s0,sp,32
    80005a6c:	0000a917          	auipc	s2,0xa
    80005a70:	85c90913          	addi	s2,s2,-1956 # 8000f2c8 <cons>
    80005a74:	00050493          	mv	s1,a0
    80005a78:	00090513          	mv	a0,s2
    80005a7c:	00001097          	auipc	ra,0x1
    80005a80:	e40080e7          	jalr	-448(ra) # 800068bc <acquire>
    80005a84:	02048c63          	beqz	s1,80005abc <consoleintr+0x68>
    80005a88:	0a092783          	lw	a5,160(s2)
    80005a8c:	09892703          	lw	a4,152(s2)
    80005a90:	07f00693          	li	a3,127
    80005a94:	40e7873b          	subw	a4,a5,a4
    80005a98:	02e6e263          	bltu	a3,a4,80005abc <consoleintr+0x68>
    80005a9c:	00d00713          	li	a4,13
    80005aa0:	04e48063          	beq	s1,a4,80005ae0 <consoleintr+0x8c>
    80005aa4:	07f7f713          	andi	a4,a5,127
    80005aa8:	00e90733          	add	a4,s2,a4
    80005aac:	0017879b          	addiw	a5,a5,1
    80005ab0:	0af92023          	sw	a5,160(s2)
    80005ab4:	00970c23          	sb	s1,24(a4)
    80005ab8:	08f92e23          	sw	a5,156(s2)
    80005abc:	01013403          	ld	s0,16(sp)
    80005ac0:	01813083          	ld	ra,24(sp)
    80005ac4:	00813483          	ld	s1,8(sp)
    80005ac8:	00013903          	ld	s2,0(sp)
    80005acc:	00009517          	auipc	a0,0x9
    80005ad0:	7fc50513          	addi	a0,a0,2044 # 8000f2c8 <cons>
    80005ad4:	02010113          	addi	sp,sp,32
    80005ad8:	00001317          	auipc	t1,0x1
    80005adc:	eb030067          	jr	-336(t1) # 80006988 <release>
    80005ae0:	00a00493          	li	s1,10
    80005ae4:	fc1ff06f          	j	80005aa4 <consoleintr+0x50>

0000000080005ae8 <consoleinit>:
    80005ae8:	fe010113          	addi	sp,sp,-32
    80005aec:	00113c23          	sd	ra,24(sp)
    80005af0:	00813823          	sd	s0,16(sp)
    80005af4:	00913423          	sd	s1,8(sp)
    80005af8:	02010413          	addi	s0,sp,32
    80005afc:	00009497          	auipc	s1,0x9
    80005b00:	7cc48493          	addi	s1,s1,1996 # 8000f2c8 <cons>
    80005b04:	00048513          	mv	a0,s1
    80005b08:	00003597          	auipc	a1,0x3
    80005b0c:	95858593          	addi	a1,a1,-1704 # 80008460 <CONSOLE_STATUS+0x450>
    80005b10:	00001097          	auipc	ra,0x1
    80005b14:	d88080e7          	jalr	-632(ra) # 80006898 <initlock>
    80005b18:	00000097          	auipc	ra,0x0
    80005b1c:	7ac080e7          	jalr	1964(ra) # 800062c4 <uartinit>
    80005b20:	01813083          	ld	ra,24(sp)
    80005b24:	01013403          	ld	s0,16(sp)
    80005b28:	00000797          	auipc	a5,0x0
    80005b2c:	d9c78793          	addi	a5,a5,-612 # 800058c4 <consoleread>
    80005b30:	0af4bc23          	sd	a5,184(s1)
    80005b34:	00000797          	auipc	a5,0x0
    80005b38:	cec78793          	addi	a5,a5,-788 # 80005820 <consolewrite>
    80005b3c:	0cf4b023          	sd	a5,192(s1)
    80005b40:	00813483          	ld	s1,8(sp)
    80005b44:	02010113          	addi	sp,sp,32
    80005b48:	00008067          	ret

0000000080005b4c <console_read>:
    80005b4c:	ff010113          	addi	sp,sp,-16
    80005b50:	00813423          	sd	s0,8(sp)
    80005b54:	01010413          	addi	s0,sp,16
    80005b58:	00813403          	ld	s0,8(sp)
    80005b5c:	0000a317          	auipc	t1,0xa
    80005b60:	82433303          	ld	t1,-2012(t1) # 8000f380 <devsw+0x10>
    80005b64:	01010113          	addi	sp,sp,16
    80005b68:	00030067          	jr	t1

0000000080005b6c <console_write>:
    80005b6c:	ff010113          	addi	sp,sp,-16
    80005b70:	00813423          	sd	s0,8(sp)
    80005b74:	01010413          	addi	s0,sp,16
    80005b78:	00813403          	ld	s0,8(sp)
    80005b7c:	0000a317          	auipc	t1,0xa
    80005b80:	80c33303          	ld	t1,-2036(t1) # 8000f388 <devsw+0x18>
    80005b84:	01010113          	addi	sp,sp,16
    80005b88:	00030067          	jr	t1

0000000080005b8c <panic>:
    80005b8c:	fe010113          	addi	sp,sp,-32
    80005b90:	00113c23          	sd	ra,24(sp)
    80005b94:	00813823          	sd	s0,16(sp)
    80005b98:	00913423          	sd	s1,8(sp)
    80005b9c:	02010413          	addi	s0,sp,32
    80005ba0:	00050493          	mv	s1,a0
    80005ba4:	00003517          	auipc	a0,0x3
    80005ba8:	8c450513          	addi	a0,a0,-1852 # 80008468 <CONSOLE_STATUS+0x458>
    80005bac:	0000a797          	auipc	a5,0xa
    80005bb0:	8607ae23          	sw	zero,-1924(a5) # 8000f428 <pr+0x18>
    80005bb4:	00000097          	auipc	ra,0x0
    80005bb8:	034080e7          	jalr	52(ra) # 80005be8 <__printf>
    80005bbc:	00048513          	mv	a0,s1
    80005bc0:	00000097          	auipc	ra,0x0
    80005bc4:	028080e7          	jalr	40(ra) # 80005be8 <__printf>
    80005bc8:	00003517          	auipc	a0,0x3
    80005bcc:	88050513          	addi	a0,a0,-1920 # 80008448 <CONSOLE_STATUS+0x438>
    80005bd0:	00000097          	auipc	ra,0x0
    80005bd4:	018080e7          	jalr	24(ra) # 80005be8 <__printf>
    80005bd8:	00100793          	li	a5,1
    80005bdc:	00004717          	auipc	a4,0x4
    80005be0:	52f72623          	sw	a5,1324(a4) # 8000a108 <panicked>
    80005be4:	0000006f          	j	80005be4 <panic+0x58>

0000000080005be8 <__printf>:
    80005be8:	f3010113          	addi	sp,sp,-208
    80005bec:	08813023          	sd	s0,128(sp)
    80005bf0:	07313423          	sd	s3,104(sp)
    80005bf4:	09010413          	addi	s0,sp,144
    80005bf8:	05813023          	sd	s8,64(sp)
    80005bfc:	08113423          	sd	ra,136(sp)
    80005c00:	06913c23          	sd	s1,120(sp)
    80005c04:	07213823          	sd	s2,112(sp)
    80005c08:	07413023          	sd	s4,96(sp)
    80005c0c:	05513c23          	sd	s5,88(sp)
    80005c10:	05613823          	sd	s6,80(sp)
    80005c14:	05713423          	sd	s7,72(sp)
    80005c18:	03913c23          	sd	s9,56(sp)
    80005c1c:	03a13823          	sd	s10,48(sp)
    80005c20:	03b13423          	sd	s11,40(sp)
    80005c24:	00009317          	auipc	t1,0x9
    80005c28:	7ec30313          	addi	t1,t1,2028 # 8000f410 <pr>
    80005c2c:	01832c03          	lw	s8,24(t1)
    80005c30:	00b43423          	sd	a1,8(s0)
    80005c34:	00c43823          	sd	a2,16(s0)
    80005c38:	00d43c23          	sd	a3,24(s0)
    80005c3c:	02e43023          	sd	a4,32(s0)
    80005c40:	02f43423          	sd	a5,40(s0)
    80005c44:	03043823          	sd	a6,48(s0)
    80005c48:	03143c23          	sd	a7,56(s0)
    80005c4c:	00050993          	mv	s3,a0
    80005c50:	4a0c1663          	bnez	s8,800060fc <__printf+0x514>
    80005c54:	60098c63          	beqz	s3,8000626c <__printf+0x684>
    80005c58:	0009c503          	lbu	a0,0(s3)
    80005c5c:	00840793          	addi	a5,s0,8
    80005c60:	f6f43c23          	sd	a5,-136(s0)
    80005c64:	00000493          	li	s1,0
    80005c68:	22050063          	beqz	a0,80005e88 <__printf+0x2a0>
    80005c6c:	00002a37          	lui	s4,0x2
    80005c70:	00018ab7          	lui	s5,0x18
    80005c74:	000f4b37          	lui	s6,0xf4
    80005c78:	00989bb7          	lui	s7,0x989
    80005c7c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80005c80:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80005c84:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80005c88:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80005c8c:	00148c9b          	addiw	s9,s1,1
    80005c90:	02500793          	li	a5,37
    80005c94:	01998933          	add	s2,s3,s9
    80005c98:	38f51263          	bne	a0,a5,8000601c <__printf+0x434>
    80005c9c:	00094783          	lbu	a5,0(s2)
    80005ca0:	00078c9b          	sext.w	s9,a5
    80005ca4:	1e078263          	beqz	a5,80005e88 <__printf+0x2a0>
    80005ca8:	0024849b          	addiw	s1,s1,2
    80005cac:	07000713          	li	a4,112
    80005cb0:	00998933          	add	s2,s3,s1
    80005cb4:	38e78a63          	beq	a5,a4,80006048 <__printf+0x460>
    80005cb8:	20f76863          	bltu	a4,a5,80005ec8 <__printf+0x2e0>
    80005cbc:	42a78863          	beq	a5,a0,800060ec <__printf+0x504>
    80005cc0:	06400713          	li	a4,100
    80005cc4:	40e79663          	bne	a5,a4,800060d0 <__printf+0x4e8>
    80005cc8:	f7843783          	ld	a5,-136(s0)
    80005ccc:	0007a603          	lw	a2,0(a5)
    80005cd0:	00878793          	addi	a5,a5,8
    80005cd4:	f6f43c23          	sd	a5,-136(s0)
    80005cd8:	42064a63          	bltz	a2,8000610c <__printf+0x524>
    80005cdc:	00a00713          	li	a4,10
    80005ce0:	02e677bb          	remuw	a5,a2,a4
    80005ce4:	00002d97          	auipc	s11,0x2
    80005ce8:	7acd8d93          	addi	s11,s11,1964 # 80008490 <digits>
    80005cec:	00900593          	li	a1,9
    80005cf0:	0006051b          	sext.w	a0,a2
    80005cf4:	00000c93          	li	s9,0
    80005cf8:	02079793          	slli	a5,a5,0x20
    80005cfc:	0207d793          	srli	a5,a5,0x20
    80005d00:	00fd87b3          	add	a5,s11,a5
    80005d04:	0007c783          	lbu	a5,0(a5)
    80005d08:	02e656bb          	divuw	a3,a2,a4
    80005d0c:	f8f40023          	sb	a5,-128(s0)
    80005d10:	14c5d863          	bge	a1,a2,80005e60 <__printf+0x278>
    80005d14:	06300593          	li	a1,99
    80005d18:	00100c93          	li	s9,1
    80005d1c:	02e6f7bb          	remuw	a5,a3,a4
    80005d20:	02079793          	slli	a5,a5,0x20
    80005d24:	0207d793          	srli	a5,a5,0x20
    80005d28:	00fd87b3          	add	a5,s11,a5
    80005d2c:	0007c783          	lbu	a5,0(a5)
    80005d30:	02e6d73b          	divuw	a4,a3,a4
    80005d34:	f8f400a3          	sb	a5,-127(s0)
    80005d38:	12a5f463          	bgeu	a1,a0,80005e60 <__printf+0x278>
    80005d3c:	00a00693          	li	a3,10
    80005d40:	00900593          	li	a1,9
    80005d44:	02d777bb          	remuw	a5,a4,a3
    80005d48:	02079793          	slli	a5,a5,0x20
    80005d4c:	0207d793          	srli	a5,a5,0x20
    80005d50:	00fd87b3          	add	a5,s11,a5
    80005d54:	0007c503          	lbu	a0,0(a5)
    80005d58:	02d757bb          	divuw	a5,a4,a3
    80005d5c:	f8a40123          	sb	a0,-126(s0)
    80005d60:	48e5f263          	bgeu	a1,a4,800061e4 <__printf+0x5fc>
    80005d64:	06300513          	li	a0,99
    80005d68:	02d7f5bb          	remuw	a1,a5,a3
    80005d6c:	02059593          	slli	a1,a1,0x20
    80005d70:	0205d593          	srli	a1,a1,0x20
    80005d74:	00bd85b3          	add	a1,s11,a1
    80005d78:	0005c583          	lbu	a1,0(a1)
    80005d7c:	02d7d7bb          	divuw	a5,a5,a3
    80005d80:	f8b401a3          	sb	a1,-125(s0)
    80005d84:	48e57263          	bgeu	a0,a4,80006208 <__printf+0x620>
    80005d88:	3e700513          	li	a0,999
    80005d8c:	02d7f5bb          	remuw	a1,a5,a3
    80005d90:	02059593          	slli	a1,a1,0x20
    80005d94:	0205d593          	srli	a1,a1,0x20
    80005d98:	00bd85b3          	add	a1,s11,a1
    80005d9c:	0005c583          	lbu	a1,0(a1)
    80005da0:	02d7d7bb          	divuw	a5,a5,a3
    80005da4:	f8b40223          	sb	a1,-124(s0)
    80005da8:	46e57663          	bgeu	a0,a4,80006214 <__printf+0x62c>
    80005dac:	02d7f5bb          	remuw	a1,a5,a3
    80005db0:	02059593          	slli	a1,a1,0x20
    80005db4:	0205d593          	srli	a1,a1,0x20
    80005db8:	00bd85b3          	add	a1,s11,a1
    80005dbc:	0005c583          	lbu	a1,0(a1)
    80005dc0:	02d7d7bb          	divuw	a5,a5,a3
    80005dc4:	f8b402a3          	sb	a1,-123(s0)
    80005dc8:	46ea7863          	bgeu	s4,a4,80006238 <__printf+0x650>
    80005dcc:	02d7f5bb          	remuw	a1,a5,a3
    80005dd0:	02059593          	slli	a1,a1,0x20
    80005dd4:	0205d593          	srli	a1,a1,0x20
    80005dd8:	00bd85b3          	add	a1,s11,a1
    80005ddc:	0005c583          	lbu	a1,0(a1)
    80005de0:	02d7d7bb          	divuw	a5,a5,a3
    80005de4:	f8b40323          	sb	a1,-122(s0)
    80005de8:	3eeaf863          	bgeu	s5,a4,800061d8 <__printf+0x5f0>
    80005dec:	02d7f5bb          	remuw	a1,a5,a3
    80005df0:	02059593          	slli	a1,a1,0x20
    80005df4:	0205d593          	srli	a1,a1,0x20
    80005df8:	00bd85b3          	add	a1,s11,a1
    80005dfc:	0005c583          	lbu	a1,0(a1)
    80005e00:	02d7d7bb          	divuw	a5,a5,a3
    80005e04:	f8b403a3          	sb	a1,-121(s0)
    80005e08:	42eb7e63          	bgeu	s6,a4,80006244 <__printf+0x65c>
    80005e0c:	02d7f5bb          	remuw	a1,a5,a3
    80005e10:	02059593          	slli	a1,a1,0x20
    80005e14:	0205d593          	srli	a1,a1,0x20
    80005e18:	00bd85b3          	add	a1,s11,a1
    80005e1c:	0005c583          	lbu	a1,0(a1)
    80005e20:	02d7d7bb          	divuw	a5,a5,a3
    80005e24:	f8b40423          	sb	a1,-120(s0)
    80005e28:	42ebfc63          	bgeu	s7,a4,80006260 <__printf+0x678>
    80005e2c:	02079793          	slli	a5,a5,0x20
    80005e30:	0207d793          	srli	a5,a5,0x20
    80005e34:	00fd8db3          	add	s11,s11,a5
    80005e38:	000dc703          	lbu	a4,0(s11)
    80005e3c:	00a00793          	li	a5,10
    80005e40:	00900c93          	li	s9,9
    80005e44:	f8e404a3          	sb	a4,-119(s0)
    80005e48:	00065c63          	bgez	a2,80005e60 <__printf+0x278>
    80005e4c:	f9040713          	addi	a4,s0,-112
    80005e50:	00f70733          	add	a4,a4,a5
    80005e54:	02d00693          	li	a3,45
    80005e58:	fed70823          	sb	a3,-16(a4)
    80005e5c:	00078c93          	mv	s9,a5
    80005e60:	f8040793          	addi	a5,s0,-128
    80005e64:	01978cb3          	add	s9,a5,s9
    80005e68:	f7f40d13          	addi	s10,s0,-129
    80005e6c:	000cc503          	lbu	a0,0(s9)
    80005e70:	fffc8c93          	addi	s9,s9,-1
    80005e74:	00000097          	auipc	ra,0x0
    80005e78:	b90080e7          	jalr	-1136(ra) # 80005a04 <consputc>
    80005e7c:	ffac98e3          	bne	s9,s10,80005e6c <__printf+0x284>
    80005e80:	00094503          	lbu	a0,0(s2)
    80005e84:	e00514e3          	bnez	a0,80005c8c <__printf+0xa4>
    80005e88:	1a0c1663          	bnez	s8,80006034 <__printf+0x44c>
    80005e8c:	08813083          	ld	ra,136(sp)
    80005e90:	08013403          	ld	s0,128(sp)
    80005e94:	07813483          	ld	s1,120(sp)
    80005e98:	07013903          	ld	s2,112(sp)
    80005e9c:	06813983          	ld	s3,104(sp)
    80005ea0:	06013a03          	ld	s4,96(sp)
    80005ea4:	05813a83          	ld	s5,88(sp)
    80005ea8:	05013b03          	ld	s6,80(sp)
    80005eac:	04813b83          	ld	s7,72(sp)
    80005eb0:	04013c03          	ld	s8,64(sp)
    80005eb4:	03813c83          	ld	s9,56(sp)
    80005eb8:	03013d03          	ld	s10,48(sp)
    80005ebc:	02813d83          	ld	s11,40(sp)
    80005ec0:	0d010113          	addi	sp,sp,208
    80005ec4:	00008067          	ret
    80005ec8:	07300713          	li	a4,115
    80005ecc:	1ce78a63          	beq	a5,a4,800060a0 <__printf+0x4b8>
    80005ed0:	07800713          	li	a4,120
    80005ed4:	1ee79e63          	bne	a5,a4,800060d0 <__printf+0x4e8>
    80005ed8:	f7843783          	ld	a5,-136(s0)
    80005edc:	0007a703          	lw	a4,0(a5)
    80005ee0:	00878793          	addi	a5,a5,8
    80005ee4:	f6f43c23          	sd	a5,-136(s0)
    80005ee8:	28074263          	bltz	a4,8000616c <__printf+0x584>
    80005eec:	00002d97          	auipc	s11,0x2
    80005ef0:	5a4d8d93          	addi	s11,s11,1444 # 80008490 <digits>
    80005ef4:	00f77793          	andi	a5,a4,15
    80005ef8:	00fd87b3          	add	a5,s11,a5
    80005efc:	0007c683          	lbu	a3,0(a5)
    80005f00:	00f00613          	li	a2,15
    80005f04:	0007079b          	sext.w	a5,a4
    80005f08:	f8d40023          	sb	a3,-128(s0)
    80005f0c:	0047559b          	srliw	a1,a4,0x4
    80005f10:	0047569b          	srliw	a3,a4,0x4
    80005f14:	00000c93          	li	s9,0
    80005f18:	0ee65063          	bge	a2,a4,80005ff8 <__printf+0x410>
    80005f1c:	00f6f693          	andi	a3,a3,15
    80005f20:	00dd86b3          	add	a3,s11,a3
    80005f24:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80005f28:	0087d79b          	srliw	a5,a5,0x8
    80005f2c:	00100c93          	li	s9,1
    80005f30:	f8d400a3          	sb	a3,-127(s0)
    80005f34:	0cb67263          	bgeu	a2,a1,80005ff8 <__printf+0x410>
    80005f38:	00f7f693          	andi	a3,a5,15
    80005f3c:	00dd86b3          	add	a3,s11,a3
    80005f40:	0006c583          	lbu	a1,0(a3)
    80005f44:	00f00613          	li	a2,15
    80005f48:	0047d69b          	srliw	a3,a5,0x4
    80005f4c:	f8b40123          	sb	a1,-126(s0)
    80005f50:	0047d593          	srli	a1,a5,0x4
    80005f54:	28f67e63          	bgeu	a2,a5,800061f0 <__printf+0x608>
    80005f58:	00f6f693          	andi	a3,a3,15
    80005f5c:	00dd86b3          	add	a3,s11,a3
    80005f60:	0006c503          	lbu	a0,0(a3)
    80005f64:	0087d813          	srli	a6,a5,0x8
    80005f68:	0087d69b          	srliw	a3,a5,0x8
    80005f6c:	f8a401a3          	sb	a0,-125(s0)
    80005f70:	28b67663          	bgeu	a2,a1,800061fc <__printf+0x614>
    80005f74:	00f6f693          	andi	a3,a3,15
    80005f78:	00dd86b3          	add	a3,s11,a3
    80005f7c:	0006c583          	lbu	a1,0(a3)
    80005f80:	00c7d513          	srli	a0,a5,0xc
    80005f84:	00c7d69b          	srliw	a3,a5,0xc
    80005f88:	f8b40223          	sb	a1,-124(s0)
    80005f8c:	29067a63          	bgeu	a2,a6,80006220 <__printf+0x638>
    80005f90:	00f6f693          	andi	a3,a3,15
    80005f94:	00dd86b3          	add	a3,s11,a3
    80005f98:	0006c583          	lbu	a1,0(a3)
    80005f9c:	0107d813          	srli	a6,a5,0x10
    80005fa0:	0107d69b          	srliw	a3,a5,0x10
    80005fa4:	f8b402a3          	sb	a1,-123(s0)
    80005fa8:	28a67263          	bgeu	a2,a0,8000622c <__printf+0x644>
    80005fac:	00f6f693          	andi	a3,a3,15
    80005fb0:	00dd86b3          	add	a3,s11,a3
    80005fb4:	0006c683          	lbu	a3,0(a3)
    80005fb8:	0147d79b          	srliw	a5,a5,0x14
    80005fbc:	f8d40323          	sb	a3,-122(s0)
    80005fc0:	21067663          	bgeu	a2,a6,800061cc <__printf+0x5e4>
    80005fc4:	02079793          	slli	a5,a5,0x20
    80005fc8:	0207d793          	srli	a5,a5,0x20
    80005fcc:	00fd8db3          	add	s11,s11,a5
    80005fd0:	000dc683          	lbu	a3,0(s11)
    80005fd4:	00800793          	li	a5,8
    80005fd8:	00700c93          	li	s9,7
    80005fdc:	f8d403a3          	sb	a3,-121(s0)
    80005fe0:	00075c63          	bgez	a4,80005ff8 <__printf+0x410>
    80005fe4:	f9040713          	addi	a4,s0,-112
    80005fe8:	00f70733          	add	a4,a4,a5
    80005fec:	02d00693          	li	a3,45
    80005ff0:	fed70823          	sb	a3,-16(a4)
    80005ff4:	00078c93          	mv	s9,a5
    80005ff8:	f8040793          	addi	a5,s0,-128
    80005ffc:	01978cb3          	add	s9,a5,s9
    80006000:	f7f40d13          	addi	s10,s0,-129
    80006004:	000cc503          	lbu	a0,0(s9)
    80006008:	fffc8c93          	addi	s9,s9,-1
    8000600c:	00000097          	auipc	ra,0x0
    80006010:	9f8080e7          	jalr	-1544(ra) # 80005a04 <consputc>
    80006014:	ff9d18e3          	bne	s10,s9,80006004 <__printf+0x41c>
    80006018:	0100006f          	j	80006028 <__printf+0x440>
    8000601c:	00000097          	auipc	ra,0x0
    80006020:	9e8080e7          	jalr	-1560(ra) # 80005a04 <consputc>
    80006024:	000c8493          	mv	s1,s9
    80006028:	00094503          	lbu	a0,0(s2)
    8000602c:	c60510e3          	bnez	a0,80005c8c <__printf+0xa4>
    80006030:	e40c0ee3          	beqz	s8,80005e8c <__printf+0x2a4>
    80006034:	00009517          	auipc	a0,0x9
    80006038:	3dc50513          	addi	a0,a0,988 # 8000f410 <pr>
    8000603c:	00001097          	auipc	ra,0x1
    80006040:	94c080e7          	jalr	-1716(ra) # 80006988 <release>
    80006044:	e49ff06f          	j	80005e8c <__printf+0x2a4>
    80006048:	f7843783          	ld	a5,-136(s0)
    8000604c:	03000513          	li	a0,48
    80006050:	01000d13          	li	s10,16
    80006054:	00878713          	addi	a4,a5,8
    80006058:	0007bc83          	ld	s9,0(a5)
    8000605c:	f6e43c23          	sd	a4,-136(s0)
    80006060:	00000097          	auipc	ra,0x0
    80006064:	9a4080e7          	jalr	-1628(ra) # 80005a04 <consputc>
    80006068:	07800513          	li	a0,120
    8000606c:	00000097          	auipc	ra,0x0
    80006070:	998080e7          	jalr	-1640(ra) # 80005a04 <consputc>
    80006074:	00002d97          	auipc	s11,0x2
    80006078:	41cd8d93          	addi	s11,s11,1052 # 80008490 <digits>
    8000607c:	03ccd793          	srli	a5,s9,0x3c
    80006080:	00fd87b3          	add	a5,s11,a5
    80006084:	0007c503          	lbu	a0,0(a5)
    80006088:	fffd0d1b          	addiw	s10,s10,-1
    8000608c:	004c9c93          	slli	s9,s9,0x4
    80006090:	00000097          	auipc	ra,0x0
    80006094:	974080e7          	jalr	-1676(ra) # 80005a04 <consputc>
    80006098:	fe0d12e3          	bnez	s10,8000607c <__printf+0x494>
    8000609c:	f8dff06f          	j	80006028 <__printf+0x440>
    800060a0:	f7843783          	ld	a5,-136(s0)
    800060a4:	0007bc83          	ld	s9,0(a5)
    800060a8:	00878793          	addi	a5,a5,8
    800060ac:	f6f43c23          	sd	a5,-136(s0)
    800060b0:	000c9a63          	bnez	s9,800060c4 <__printf+0x4dc>
    800060b4:	1080006f          	j	800061bc <__printf+0x5d4>
    800060b8:	001c8c93          	addi	s9,s9,1
    800060bc:	00000097          	auipc	ra,0x0
    800060c0:	948080e7          	jalr	-1720(ra) # 80005a04 <consputc>
    800060c4:	000cc503          	lbu	a0,0(s9)
    800060c8:	fe0518e3          	bnez	a0,800060b8 <__printf+0x4d0>
    800060cc:	f5dff06f          	j	80006028 <__printf+0x440>
    800060d0:	02500513          	li	a0,37
    800060d4:	00000097          	auipc	ra,0x0
    800060d8:	930080e7          	jalr	-1744(ra) # 80005a04 <consputc>
    800060dc:	000c8513          	mv	a0,s9
    800060e0:	00000097          	auipc	ra,0x0
    800060e4:	924080e7          	jalr	-1756(ra) # 80005a04 <consputc>
    800060e8:	f41ff06f          	j	80006028 <__printf+0x440>
    800060ec:	02500513          	li	a0,37
    800060f0:	00000097          	auipc	ra,0x0
    800060f4:	914080e7          	jalr	-1772(ra) # 80005a04 <consputc>
    800060f8:	f31ff06f          	j	80006028 <__printf+0x440>
    800060fc:	00030513          	mv	a0,t1
    80006100:	00000097          	auipc	ra,0x0
    80006104:	7bc080e7          	jalr	1980(ra) # 800068bc <acquire>
    80006108:	b4dff06f          	j	80005c54 <__printf+0x6c>
    8000610c:	40c0053b          	negw	a0,a2
    80006110:	00a00713          	li	a4,10
    80006114:	02e576bb          	remuw	a3,a0,a4
    80006118:	00002d97          	auipc	s11,0x2
    8000611c:	378d8d93          	addi	s11,s11,888 # 80008490 <digits>
    80006120:	ff700593          	li	a1,-9
    80006124:	02069693          	slli	a3,a3,0x20
    80006128:	0206d693          	srli	a3,a3,0x20
    8000612c:	00dd86b3          	add	a3,s11,a3
    80006130:	0006c683          	lbu	a3,0(a3)
    80006134:	02e557bb          	divuw	a5,a0,a4
    80006138:	f8d40023          	sb	a3,-128(s0)
    8000613c:	10b65e63          	bge	a2,a1,80006258 <__printf+0x670>
    80006140:	06300593          	li	a1,99
    80006144:	02e7f6bb          	remuw	a3,a5,a4
    80006148:	02069693          	slli	a3,a3,0x20
    8000614c:	0206d693          	srli	a3,a3,0x20
    80006150:	00dd86b3          	add	a3,s11,a3
    80006154:	0006c683          	lbu	a3,0(a3)
    80006158:	02e7d73b          	divuw	a4,a5,a4
    8000615c:	00200793          	li	a5,2
    80006160:	f8d400a3          	sb	a3,-127(s0)
    80006164:	bca5ece3          	bltu	a1,a0,80005d3c <__printf+0x154>
    80006168:	ce5ff06f          	j	80005e4c <__printf+0x264>
    8000616c:	40e007bb          	negw	a5,a4
    80006170:	00002d97          	auipc	s11,0x2
    80006174:	320d8d93          	addi	s11,s11,800 # 80008490 <digits>
    80006178:	00f7f693          	andi	a3,a5,15
    8000617c:	00dd86b3          	add	a3,s11,a3
    80006180:	0006c583          	lbu	a1,0(a3)
    80006184:	ff100613          	li	a2,-15
    80006188:	0047d69b          	srliw	a3,a5,0x4
    8000618c:	f8b40023          	sb	a1,-128(s0)
    80006190:	0047d59b          	srliw	a1,a5,0x4
    80006194:	0ac75e63          	bge	a4,a2,80006250 <__printf+0x668>
    80006198:	00f6f693          	andi	a3,a3,15
    8000619c:	00dd86b3          	add	a3,s11,a3
    800061a0:	0006c603          	lbu	a2,0(a3)
    800061a4:	00f00693          	li	a3,15
    800061a8:	0087d79b          	srliw	a5,a5,0x8
    800061ac:	f8c400a3          	sb	a2,-127(s0)
    800061b0:	d8b6e4e3          	bltu	a3,a1,80005f38 <__printf+0x350>
    800061b4:	00200793          	li	a5,2
    800061b8:	e2dff06f          	j	80005fe4 <__printf+0x3fc>
    800061bc:	00002c97          	auipc	s9,0x2
    800061c0:	2b4c8c93          	addi	s9,s9,692 # 80008470 <CONSOLE_STATUS+0x460>
    800061c4:	02800513          	li	a0,40
    800061c8:	ef1ff06f          	j	800060b8 <__printf+0x4d0>
    800061cc:	00700793          	li	a5,7
    800061d0:	00600c93          	li	s9,6
    800061d4:	e0dff06f          	j	80005fe0 <__printf+0x3f8>
    800061d8:	00700793          	li	a5,7
    800061dc:	00600c93          	li	s9,6
    800061e0:	c69ff06f          	j	80005e48 <__printf+0x260>
    800061e4:	00300793          	li	a5,3
    800061e8:	00200c93          	li	s9,2
    800061ec:	c5dff06f          	j	80005e48 <__printf+0x260>
    800061f0:	00300793          	li	a5,3
    800061f4:	00200c93          	li	s9,2
    800061f8:	de9ff06f          	j	80005fe0 <__printf+0x3f8>
    800061fc:	00400793          	li	a5,4
    80006200:	00300c93          	li	s9,3
    80006204:	dddff06f          	j	80005fe0 <__printf+0x3f8>
    80006208:	00400793          	li	a5,4
    8000620c:	00300c93          	li	s9,3
    80006210:	c39ff06f          	j	80005e48 <__printf+0x260>
    80006214:	00500793          	li	a5,5
    80006218:	00400c93          	li	s9,4
    8000621c:	c2dff06f          	j	80005e48 <__printf+0x260>
    80006220:	00500793          	li	a5,5
    80006224:	00400c93          	li	s9,4
    80006228:	db9ff06f          	j	80005fe0 <__printf+0x3f8>
    8000622c:	00600793          	li	a5,6
    80006230:	00500c93          	li	s9,5
    80006234:	dadff06f          	j	80005fe0 <__printf+0x3f8>
    80006238:	00600793          	li	a5,6
    8000623c:	00500c93          	li	s9,5
    80006240:	c09ff06f          	j	80005e48 <__printf+0x260>
    80006244:	00800793          	li	a5,8
    80006248:	00700c93          	li	s9,7
    8000624c:	bfdff06f          	j	80005e48 <__printf+0x260>
    80006250:	00100793          	li	a5,1
    80006254:	d91ff06f          	j	80005fe4 <__printf+0x3fc>
    80006258:	00100793          	li	a5,1
    8000625c:	bf1ff06f          	j	80005e4c <__printf+0x264>
    80006260:	00900793          	li	a5,9
    80006264:	00800c93          	li	s9,8
    80006268:	be1ff06f          	j	80005e48 <__printf+0x260>
    8000626c:	00002517          	auipc	a0,0x2
    80006270:	20c50513          	addi	a0,a0,524 # 80008478 <CONSOLE_STATUS+0x468>
    80006274:	00000097          	auipc	ra,0x0
    80006278:	918080e7          	jalr	-1768(ra) # 80005b8c <panic>

000000008000627c <printfinit>:
    8000627c:	fe010113          	addi	sp,sp,-32
    80006280:	00813823          	sd	s0,16(sp)
    80006284:	00913423          	sd	s1,8(sp)
    80006288:	00113c23          	sd	ra,24(sp)
    8000628c:	02010413          	addi	s0,sp,32
    80006290:	00009497          	auipc	s1,0x9
    80006294:	18048493          	addi	s1,s1,384 # 8000f410 <pr>
    80006298:	00048513          	mv	a0,s1
    8000629c:	00002597          	auipc	a1,0x2
    800062a0:	1ec58593          	addi	a1,a1,492 # 80008488 <CONSOLE_STATUS+0x478>
    800062a4:	00000097          	auipc	ra,0x0
    800062a8:	5f4080e7          	jalr	1524(ra) # 80006898 <initlock>
    800062ac:	01813083          	ld	ra,24(sp)
    800062b0:	01013403          	ld	s0,16(sp)
    800062b4:	0004ac23          	sw	zero,24(s1)
    800062b8:	00813483          	ld	s1,8(sp)
    800062bc:	02010113          	addi	sp,sp,32
    800062c0:	00008067          	ret

00000000800062c4 <uartinit>:
    800062c4:	ff010113          	addi	sp,sp,-16
    800062c8:	00813423          	sd	s0,8(sp)
    800062cc:	01010413          	addi	s0,sp,16
    800062d0:	100007b7          	lui	a5,0x10000
    800062d4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800062d8:	f8000713          	li	a4,-128
    800062dc:	00e781a3          	sb	a4,3(a5)
    800062e0:	00300713          	li	a4,3
    800062e4:	00e78023          	sb	a4,0(a5)
    800062e8:	000780a3          	sb	zero,1(a5)
    800062ec:	00e781a3          	sb	a4,3(a5)
    800062f0:	00700693          	li	a3,7
    800062f4:	00d78123          	sb	a3,2(a5)
    800062f8:	00e780a3          	sb	a4,1(a5)
    800062fc:	00813403          	ld	s0,8(sp)
    80006300:	01010113          	addi	sp,sp,16
    80006304:	00008067          	ret

0000000080006308 <uartputc>:
    80006308:	00004797          	auipc	a5,0x4
    8000630c:	e007a783          	lw	a5,-512(a5) # 8000a108 <panicked>
    80006310:	00078463          	beqz	a5,80006318 <uartputc+0x10>
    80006314:	0000006f          	j	80006314 <uartputc+0xc>
    80006318:	fd010113          	addi	sp,sp,-48
    8000631c:	02813023          	sd	s0,32(sp)
    80006320:	00913c23          	sd	s1,24(sp)
    80006324:	01213823          	sd	s2,16(sp)
    80006328:	01313423          	sd	s3,8(sp)
    8000632c:	02113423          	sd	ra,40(sp)
    80006330:	03010413          	addi	s0,sp,48
    80006334:	00004917          	auipc	s2,0x4
    80006338:	ddc90913          	addi	s2,s2,-548 # 8000a110 <uart_tx_r>
    8000633c:	00093783          	ld	a5,0(s2)
    80006340:	00004497          	auipc	s1,0x4
    80006344:	dd848493          	addi	s1,s1,-552 # 8000a118 <uart_tx_w>
    80006348:	0004b703          	ld	a4,0(s1)
    8000634c:	02078693          	addi	a3,a5,32
    80006350:	00050993          	mv	s3,a0
    80006354:	02e69c63          	bne	a3,a4,8000638c <uartputc+0x84>
    80006358:	00001097          	auipc	ra,0x1
    8000635c:	834080e7          	jalr	-1996(ra) # 80006b8c <push_on>
    80006360:	00093783          	ld	a5,0(s2)
    80006364:	0004b703          	ld	a4,0(s1)
    80006368:	02078793          	addi	a5,a5,32
    8000636c:	00e79463          	bne	a5,a4,80006374 <uartputc+0x6c>
    80006370:	0000006f          	j	80006370 <uartputc+0x68>
    80006374:	00001097          	auipc	ra,0x1
    80006378:	88c080e7          	jalr	-1908(ra) # 80006c00 <pop_on>
    8000637c:	00093783          	ld	a5,0(s2)
    80006380:	0004b703          	ld	a4,0(s1)
    80006384:	02078693          	addi	a3,a5,32
    80006388:	fce688e3          	beq	a3,a4,80006358 <uartputc+0x50>
    8000638c:	01f77693          	andi	a3,a4,31
    80006390:	00009597          	auipc	a1,0x9
    80006394:	0a058593          	addi	a1,a1,160 # 8000f430 <uart_tx_buf>
    80006398:	00d586b3          	add	a3,a1,a3
    8000639c:	00170713          	addi	a4,a4,1
    800063a0:	01368023          	sb	s3,0(a3)
    800063a4:	00e4b023          	sd	a4,0(s1)
    800063a8:	10000637          	lui	a2,0x10000
    800063ac:	02f71063          	bne	a4,a5,800063cc <uartputc+0xc4>
    800063b0:	0340006f          	j	800063e4 <uartputc+0xdc>
    800063b4:	00074703          	lbu	a4,0(a4)
    800063b8:	00f93023          	sd	a5,0(s2)
    800063bc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800063c0:	00093783          	ld	a5,0(s2)
    800063c4:	0004b703          	ld	a4,0(s1)
    800063c8:	00f70e63          	beq	a4,a5,800063e4 <uartputc+0xdc>
    800063cc:	00564683          	lbu	a3,5(a2)
    800063d0:	01f7f713          	andi	a4,a5,31
    800063d4:	00e58733          	add	a4,a1,a4
    800063d8:	0206f693          	andi	a3,a3,32
    800063dc:	00178793          	addi	a5,a5,1
    800063e0:	fc069ae3          	bnez	a3,800063b4 <uartputc+0xac>
    800063e4:	02813083          	ld	ra,40(sp)
    800063e8:	02013403          	ld	s0,32(sp)
    800063ec:	01813483          	ld	s1,24(sp)
    800063f0:	01013903          	ld	s2,16(sp)
    800063f4:	00813983          	ld	s3,8(sp)
    800063f8:	03010113          	addi	sp,sp,48
    800063fc:	00008067          	ret

0000000080006400 <uartputc_sync>:
    80006400:	ff010113          	addi	sp,sp,-16
    80006404:	00813423          	sd	s0,8(sp)
    80006408:	01010413          	addi	s0,sp,16
    8000640c:	00004717          	auipc	a4,0x4
    80006410:	cfc72703          	lw	a4,-772(a4) # 8000a108 <panicked>
    80006414:	02071663          	bnez	a4,80006440 <uartputc_sync+0x40>
    80006418:	00050793          	mv	a5,a0
    8000641c:	100006b7          	lui	a3,0x10000
    80006420:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80006424:	02077713          	andi	a4,a4,32
    80006428:	fe070ce3          	beqz	a4,80006420 <uartputc_sync+0x20>
    8000642c:	0ff7f793          	andi	a5,a5,255
    80006430:	00f68023          	sb	a5,0(a3)
    80006434:	00813403          	ld	s0,8(sp)
    80006438:	01010113          	addi	sp,sp,16
    8000643c:	00008067          	ret
    80006440:	0000006f          	j	80006440 <uartputc_sync+0x40>

0000000080006444 <uartstart>:
    80006444:	ff010113          	addi	sp,sp,-16
    80006448:	00813423          	sd	s0,8(sp)
    8000644c:	01010413          	addi	s0,sp,16
    80006450:	00004617          	auipc	a2,0x4
    80006454:	cc060613          	addi	a2,a2,-832 # 8000a110 <uart_tx_r>
    80006458:	00004517          	auipc	a0,0x4
    8000645c:	cc050513          	addi	a0,a0,-832 # 8000a118 <uart_tx_w>
    80006460:	00063783          	ld	a5,0(a2)
    80006464:	00053703          	ld	a4,0(a0)
    80006468:	04f70263          	beq	a4,a5,800064ac <uartstart+0x68>
    8000646c:	100005b7          	lui	a1,0x10000
    80006470:	00009817          	auipc	a6,0x9
    80006474:	fc080813          	addi	a6,a6,-64 # 8000f430 <uart_tx_buf>
    80006478:	01c0006f          	j	80006494 <uartstart+0x50>
    8000647c:	0006c703          	lbu	a4,0(a3)
    80006480:	00f63023          	sd	a5,0(a2)
    80006484:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006488:	00063783          	ld	a5,0(a2)
    8000648c:	00053703          	ld	a4,0(a0)
    80006490:	00f70e63          	beq	a4,a5,800064ac <uartstart+0x68>
    80006494:	01f7f713          	andi	a4,a5,31
    80006498:	00e806b3          	add	a3,a6,a4
    8000649c:	0055c703          	lbu	a4,5(a1)
    800064a0:	00178793          	addi	a5,a5,1
    800064a4:	02077713          	andi	a4,a4,32
    800064a8:	fc071ae3          	bnez	a4,8000647c <uartstart+0x38>
    800064ac:	00813403          	ld	s0,8(sp)
    800064b0:	01010113          	addi	sp,sp,16
    800064b4:	00008067          	ret

00000000800064b8 <uartgetc>:
    800064b8:	ff010113          	addi	sp,sp,-16
    800064bc:	00813423          	sd	s0,8(sp)
    800064c0:	01010413          	addi	s0,sp,16
    800064c4:	10000737          	lui	a4,0x10000
    800064c8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800064cc:	0017f793          	andi	a5,a5,1
    800064d0:	00078c63          	beqz	a5,800064e8 <uartgetc+0x30>
    800064d4:	00074503          	lbu	a0,0(a4)
    800064d8:	0ff57513          	andi	a0,a0,255
    800064dc:	00813403          	ld	s0,8(sp)
    800064e0:	01010113          	addi	sp,sp,16
    800064e4:	00008067          	ret
    800064e8:	fff00513          	li	a0,-1
    800064ec:	ff1ff06f          	j	800064dc <uartgetc+0x24>

00000000800064f0 <uartintr>:
    800064f0:	100007b7          	lui	a5,0x10000
    800064f4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800064f8:	0017f793          	andi	a5,a5,1
    800064fc:	0a078463          	beqz	a5,800065a4 <uartintr+0xb4>
    80006500:	fe010113          	addi	sp,sp,-32
    80006504:	00813823          	sd	s0,16(sp)
    80006508:	00913423          	sd	s1,8(sp)
    8000650c:	00113c23          	sd	ra,24(sp)
    80006510:	02010413          	addi	s0,sp,32
    80006514:	100004b7          	lui	s1,0x10000
    80006518:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000651c:	0ff57513          	andi	a0,a0,255
    80006520:	fffff097          	auipc	ra,0xfffff
    80006524:	534080e7          	jalr	1332(ra) # 80005a54 <consoleintr>
    80006528:	0054c783          	lbu	a5,5(s1)
    8000652c:	0017f793          	andi	a5,a5,1
    80006530:	fe0794e3          	bnez	a5,80006518 <uartintr+0x28>
    80006534:	00004617          	auipc	a2,0x4
    80006538:	bdc60613          	addi	a2,a2,-1060 # 8000a110 <uart_tx_r>
    8000653c:	00004517          	auipc	a0,0x4
    80006540:	bdc50513          	addi	a0,a0,-1060 # 8000a118 <uart_tx_w>
    80006544:	00063783          	ld	a5,0(a2)
    80006548:	00053703          	ld	a4,0(a0)
    8000654c:	04f70263          	beq	a4,a5,80006590 <uartintr+0xa0>
    80006550:	100005b7          	lui	a1,0x10000
    80006554:	00009817          	auipc	a6,0x9
    80006558:	edc80813          	addi	a6,a6,-292 # 8000f430 <uart_tx_buf>
    8000655c:	01c0006f          	j	80006578 <uartintr+0x88>
    80006560:	0006c703          	lbu	a4,0(a3)
    80006564:	00f63023          	sd	a5,0(a2)
    80006568:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000656c:	00063783          	ld	a5,0(a2)
    80006570:	00053703          	ld	a4,0(a0)
    80006574:	00f70e63          	beq	a4,a5,80006590 <uartintr+0xa0>
    80006578:	01f7f713          	andi	a4,a5,31
    8000657c:	00e806b3          	add	a3,a6,a4
    80006580:	0055c703          	lbu	a4,5(a1)
    80006584:	00178793          	addi	a5,a5,1
    80006588:	02077713          	andi	a4,a4,32
    8000658c:	fc071ae3          	bnez	a4,80006560 <uartintr+0x70>
    80006590:	01813083          	ld	ra,24(sp)
    80006594:	01013403          	ld	s0,16(sp)
    80006598:	00813483          	ld	s1,8(sp)
    8000659c:	02010113          	addi	sp,sp,32
    800065a0:	00008067          	ret
    800065a4:	00004617          	auipc	a2,0x4
    800065a8:	b6c60613          	addi	a2,a2,-1172 # 8000a110 <uart_tx_r>
    800065ac:	00004517          	auipc	a0,0x4
    800065b0:	b6c50513          	addi	a0,a0,-1172 # 8000a118 <uart_tx_w>
    800065b4:	00063783          	ld	a5,0(a2)
    800065b8:	00053703          	ld	a4,0(a0)
    800065bc:	04f70263          	beq	a4,a5,80006600 <uartintr+0x110>
    800065c0:	100005b7          	lui	a1,0x10000
    800065c4:	00009817          	auipc	a6,0x9
    800065c8:	e6c80813          	addi	a6,a6,-404 # 8000f430 <uart_tx_buf>
    800065cc:	01c0006f          	j	800065e8 <uartintr+0xf8>
    800065d0:	0006c703          	lbu	a4,0(a3)
    800065d4:	00f63023          	sd	a5,0(a2)
    800065d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800065dc:	00063783          	ld	a5,0(a2)
    800065e0:	00053703          	ld	a4,0(a0)
    800065e4:	02f70063          	beq	a4,a5,80006604 <uartintr+0x114>
    800065e8:	01f7f713          	andi	a4,a5,31
    800065ec:	00e806b3          	add	a3,a6,a4
    800065f0:	0055c703          	lbu	a4,5(a1)
    800065f4:	00178793          	addi	a5,a5,1
    800065f8:	02077713          	andi	a4,a4,32
    800065fc:	fc071ae3          	bnez	a4,800065d0 <uartintr+0xe0>
    80006600:	00008067          	ret
    80006604:	00008067          	ret

0000000080006608 <kinit>:
    80006608:	fc010113          	addi	sp,sp,-64
    8000660c:	02913423          	sd	s1,40(sp)
    80006610:	fffff7b7          	lui	a5,0xfffff
    80006614:	0000a497          	auipc	s1,0xa
    80006618:	e3b48493          	addi	s1,s1,-453 # 8001044f <end+0xfff>
    8000661c:	02813823          	sd	s0,48(sp)
    80006620:	01313c23          	sd	s3,24(sp)
    80006624:	00f4f4b3          	and	s1,s1,a5
    80006628:	02113c23          	sd	ra,56(sp)
    8000662c:	03213023          	sd	s2,32(sp)
    80006630:	01413823          	sd	s4,16(sp)
    80006634:	01513423          	sd	s5,8(sp)
    80006638:	04010413          	addi	s0,sp,64
    8000663c:	000017b7          	lui	a5,0x1
    80006640:	01100993          	li	s3,17
    80006644:	00f487b3          	add	a5,s1,a5
    80006648:	01b99993          	slli	s3,s3,0x1b
    8000664c:	06f9e063          	bltu	s3,a5,800066ac <kinit+0xa4>
    80006650:	00009a97          	auipc	s5,0x9
    80006654:	e00a8a93          	addi	s5,s5,-512 # 8000f450 <end>
    80006658:	0754ec63          	bltu	s1,s5,800066d0 <kinit+0xc8>
    8000665c:	0734fa63          	bgeu	s1,s3,800066d0 <kinit+0xc8>
    80006660:	00088a37          	lui	s4,0x88
    80006664:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80006668:	00004917          	auipc	s2,0x4
    8000666c:	ab890913          	addi	s2,s2,-1352 # 8000a120 <kmem>
    80006670:	00ca1a13          	slli	s4,s4,0xc
    80006674:	0140006f          	j	80006688 <kinit+0x80>
    80006678:	000017b7          	lui	a5,0x1
    8000667c:	00f484b3          	add	s1,s1,a5
    80006680:	0554e863          	bltu	s1,s5,800066d0 <kinit+0xc8>
    80006684:	0534f663          	bgeu	s1,s3,800066d0 <kinit+0xc8>
    80006688:	00001637          	lui	a2,0x1
    8000668c:	00100593          	li	a1,1
    80006690:	00048513          	mv	a0,s1
    80006694:	00000097          	auipc	ra,0x0
    80006698:	5e4080e7          	jalr	1508(ra) # 80006c78 <__memset>
    8000669c:	00093783          	ld	a5,0(s2)
    800066a0:	00f4b023          	sd	a5,0(s1)
    800066a4:	00993023          	sd	s1,0(s2)
    800066a8:	fd4498e3          	bne	s1,s4,80006678 <kinit+0x70>
    800066ac:	03813083          	ld	ra,56(sp)
    800066b0:	03013403          	ld	s0,48(sp)
    800066b4:	02813483          	ld	s1,40(sp)
    800066b8:	02013903          	ld	s2,32(sp)
    800066bc:	01813983          	ld	s3,24(sp)
    800066c0:	01013a03          	ld	s4,16(sp)
    800066c4:	00813a83          	ld	s5,8(sp)
    800066c8:	04010113          	addi	sp,sp,64
    800066cc:	00008067          	ret
    800066d0:	00002517          	auipc	a0,0x2
    800066d4:	dd850513          	addi	a0,a0,-552 # 800084a8 <digits+0x18>
    800066d8:	fffff097          	auipc	ra,0xfffff
    800066dc:	4b4080e7          	jalr	1204(ra) # 80005b8c <panic>

00000000800066e0 <freerange>:
    800066e0:	fc010113          	addi	sp,sp,-64
    800066e4:	000017b7          	lui	a5,0x1
    800066e8:	02913423          	sd	s1,40(sp)
    800066ec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800066f0:	009504b3          	add	s1,a0,s1
    800066f4:	fffff537          	lui	a0,0xfffff
    800066f8:	02813823          	sd	s0,48(sp)
    800066fc:	02113c23          	sd	ra,56(sp)
    80006700:	03213023          	sd	s2,32(sp)
    80006704:	01313c23          	sd	s3,24(sp)
    80006708:	01413823          	sd	s4,16(sp)
    8000670c:	01513423          	sd	s5,8(sp)
    80006710:	01613023          	sd	s6,0(sp)
    80006714:	04010413          	addi	s0,sp,64
    80006718:	00a4f4b3          	and	s1,s1,a0
    8000671c:	00f487b3          	add	a5,s1,a5
    80006720:	06f5e463          	bltu	a1,a5,80006788 <freerange+0xa8>
    80006724:	00009a97          	auipc	s5,0x9
    80006728:	d2ca8a93          	addi	s5,s5,-724 # 8000f450 <end>
    8000672c:	0954e263          	bltu	s1,s5,800067b0 <freerange+0xd0>
    80006730:	01100993          	li	s3,17
    80006734:	01b99993          	slli	s3,s3,0x1b
    80006738:	0734fc63          	bgeu	s1,s3,800067b0 <freerange+0xd0>
    8000673c:	00058a13          	mv	s4,a1
    80006740:	00004917          	auipc	s2,0x4
    80006744:	9e090913          	addi	s2,s2,-1568 # 8000a120 <kmem>
    80006748:	00002b37          	lui	s6,0x2
    8000674c:	0140006f          	j	80006760 <freerange+0x80>
    80006750:	000017b7          	lui	a5,0x1
    80006754:	00f484b3          	add	s1,s1,a5
    80006758:	0554ec63          	bltu	s1,s5,800067b0 <freerange+0xd0>
    8000675c:	0534fa63          	bgeu	s1,s3,800067b0 <freerange+0xd0>
    80006760:	00001637          	lui	a2,0x1
    80006764:	00100593          	li	a1,1
    80006768:	00048513          	mv	a0,s1
    8000676c:	00000097          	auipc	ra,0x0
    80006770:	50c080e7          	jalr	1292(ra) # 80006c78 <__memset>
    80006774:	00093703          	ld	a4,0(s2)
    80006778:	016487b3          	add	a5,s1,s6
    8000677c:	00e4b023          	sd	a4,0(s1)
    80006780:	00993023          	sd	s1,0(s2)
    80006784:	fcfa76e3          	bgeu	s4,a5,80006750 <freerange+0x70>
    80006788:	03813083          	ld	ra,56(sp)
    8000678c:	03013403          	ld	s0,48(sp)
    80006790:	02813483          	ld	s1,40(sp)
    80006794:	02013903          	ld	s2,32(sp)
    80006798:	01813983          	ld	s3,24(sp)
    8000679c:	01013a03          	ld	s4,16(sp)
    800067a0:	00813a83          	ld	s5,8(sp)
    800067a4:	00013b03          	ld	s6,0(sp)
    800067a8:	04010113          	addi	sp,sp,64
    800067ac:	00008067          	ret
    800067b0:	00002517          	auipc	a0,0x2
    800067b4:	cf850513          	addi	a0,a0,-776 # 800084a8 <digits+0x18>
    800067b8:	fffff097          	auipc	ra,0xfffff
    800067bc:	3d4080e7          	jalr	980(ra) # 80005b8c <panic>

00000000800067c0 <kfree>:
    800067c0:	fe010113          	addi	sp,sp,-32
    800067c4:	00813823          	sd	s0,16(sp)
    800067c8:	00113c23          	sd	ra,24(sp)
    800067cc:	00913423          	sd	s1,8(sp)
    800067d0:	02010413          	addi	s0,sp,32
    800067d4:	03451793          	slli	a5,a0,0x34
    800067d8:	04079c63          	bnez	a5,80006830 <kfree+0x70>
    800067dc:	00009797          	auipc	a5,0x9
    800067e0:	c7478793          	addi	a5,a5,-908 # 8000f450 <end>
    800067e4:	00050493          	mv	s1,a0
    800067e8:	04f56463          	bltu	a0,a5,80006830 <kfree+0x70>
    800067ec:	01100793          	li	a5,17
    800067f0:	01b79793          	slli	a5,a5,0x1b
    800067f4:	02f57e63          	bgeu	a0,a5,80006830 <kfree+0x70>
    800067f8:	00001637          	lui	a2,0x1
    800067fc:	00100593          	li	a1,1
    80006800:	00000097          	auipc	ra,0x0
    80006804:	478080e7          	jalr	1144(ra) # 80006c78 <__memset>
    80006808:	00004797          	auipc	a5,0x4
    8000680c:	91878793          	addi	a5,a5,-1768 # 8000a120 <kmem>
    80006810:	0007b703          	ld	a4,0(a5)
    80006814:	01813083          	ld	ra,24(sp)
    80006818:	01013403          	ld	s0,16(sp)
    8000681c:	00e4b023          	sd	a4,0(s1)
    80006820:	0097b023          	sd	s1,0(a5)
    80006824:	00813483          	ld	s1,8(sp)
    80006828:	02010113          	addi	sp,sp,32
    8000682c:	00008067          	ret
    80006830:	00002517          	auipc	a0,0x2
    80006834:	c7850513          	addi	a0,a0,-904 # 800084a8 <digits+0x18>
    80006838:	fffff097          	auipc	ra,0xfffff
    8000683c:	354080e7          	jalr	852(ra) # 80005b8c <panic>

0000000080006840 <kalloc>:
    80006840:	fe010113          	addi	sp,sp,-32
    80006844:	00813823          	sd	s0,16(sp)
    80006848:	00913423          	sd	s1,8(sp)
    8000684c:	00113c23          	sd	ra,24(sp)
    80006850:	02010413          	addi	s0,sp,32
    80006854:	00004797          	auipc	a5,0x4
    80006858:	8cc78793          	addi	a5,a5,-1844 # 8000a120 <kmem>
    8000685c:	0007b483          	ld	s1,0(a5)
    80006860:	02048063          	beqz	s1,80006880 <kalloc+0x40>
    80006864:	0004b703          	ld	a4,0(s1)
    80006868:	00001637          	lui	a2,0x1
    8000686c:	00500593          	li	a1,5
    80006870:	00048513          	mv	a0,s1
    80006874:	00e7b023          	sd	a4,0(a5)
    80006878:	00000097          	auipc	ra,0x0
    8000687c:	400080e7          	jalr	1024(ra) # 80006c78 <__memset>
    80006880:	01813083          	ld	ra,24(sp)
    80006884:	01013403          	ld	s0,16(sp)
    80006888:	00048513          	mv	a0,s1
    8000688c:	00813483          	ld	s1,8(sp)
    80006890:	02010113          	addi	sp,sp,32
    80006894:	00008067          	ret

0000000080006898 <initlock>:
    80006898:	ff010113          	addi	sp,sp,-16
    8000689c:	00813423          	sd	s0,8(sp)
    800068a0:	01010413          	addi	s0,sp,16
    800068a4:	00813403          	ld	s0,8(sp)
    800068a8:	00b53423          	sd	a1,8(a0)
    800068ac:	00052023          	sw	zero,0(a0)
    800068b0:	00053823          	sd	zero,16(a0)
    800068b4:	01010113          	addi	sp,sp,16
    800068b8:	00008067          	ret

00000000800068bc <acquire>:
    800068bc:	fe010113          	addi	sp,sp,-32
    800068c0:	00813823          	sd	s0,16(sp)
    800068c4:	00913423          	sd	s1,8(sp)
    800068c8:	00113c23          	sd	ra,24(sp)
    800068cc:	01213023          	sd	s2,0(sp)
    800068d0:	02010413          	addi	s0,sp,32
    800068d4:	00050493          	mv	s1,a0
    800068d8:	10002973          	csrr	s2,sstatus
    800068dc:	100027f3          	csrr	a5,sstatus
    800068e0:	ffd7f793          	andi	a5,a5,-3
    800068e4:	10079073          	csrw	sstatus,a5
    800068e8:	fffff097          	auipc	ra,0xfffff
    800068ec:	8ec080e7          	jalr	-1812(ra) # 800051d4 <mycpu>
    800068f0:	07852783          	lw	a5,120(a0)
    800068f4:	06078e63          	beqz	a5,80006970 <acquire+0xb4>
    800068f8:	fffff097          	auipc	ra,0xfffff
    800068fc:	8dc080e7          	jalr	-1828(ra) # 800051d4 <mycpu>
    80006900:	07852783          	lw	a5,120(a0)
    80006904:	0004a703          	lw	a4,0(s1)
    80006908:	0017879b          	addiw	a5,a5,1
    8000690c:	06f52c23          	sw	a5,120(a0)
    80006910:	04071063          	bnez	a4,80006950 <acquire+0x94>
    80006914:	00100713          	li	a4,1
    80006918:	00070793          	mv	a5,a4
    8000691c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80006920:	0007879b          	sext.w	a5,a5
    80006924:	fe079ae3          	bnez	a5,80006918 <acquire+0x5c>
    80006928:	0ff0000f          	fence
    8000692c:	fffff097          	auipc	ra,0xfffff
    80006930:	8a8080e7          	jalr	-1880(ra) # 800051d4 <mycpu>
    80006934:	01813083          	ld	ra,24(sp)
    80006938:	01013403          	ld	s0,16(sp)
    8000693c:	00a4b823          	sd	a0,16(s1)
    80006940:	00013903          	ld	s2,0(sp)
    80006944:	00813483          	ld	s1,8(sp)
    80006948:	02010113          	addi	sp,sp,32
    8000694c:	00008067          	ret
    80006950:	0104b903          	ld	s2,16(s1)
    80006954:	fffff097          	auipc	ra,0xfffff
    80006958:	880080e7          	jalr	-1920(ra) # 800051d4 <mycpu>
    8000695c:	faa91ce3          	bne	s2,a0,80006914 <acquire+0x58>
    80006960:	00002517          	auipc	a0,0x2
    80006964:	b5050513          	addi	a0,a0,-1200 # 800084b0 <digits+0x20>
    80006968:	fffff097          	auipc	ra,0xfffff
    8000696c:	224080e7          	jalr	548(ra) # 80005b8c <panic>
    80006970:	00195913          	srli	s2,s2,0x1
    80006974:	fffff097          	auipc	ra,0xfffff
    80006978:	860080e7          	jalr	-1952(ra) # 800051d4 <mycpu>
    8000697c:	00197913          	andi	s2,s2,1
    80006980:	07252e23          	sw	s2,124(a0)
    80006984:	f75ff06f          	j	800068f8 <acquire+0x3c>

0000000080006988 <release>:
    80006988:	fe010113          	addi	sp,sp,-32
    8000698c:	00813823          	sd	s0,16(sp)
    80006990:	00113c23          	sd	ra,24(sp)
    80006994:	00913423          	sd	s1,8(sp)
    80006998:	01213023          	sd	s2,0(sp)
    8000699c:	02010413          	addi	s0,sp,32
    800069a0:	00052783          	lw	a5,0(a0)
    800069a4:	00079a63          	bnez	a5,800069b8 <release+0x30>
    800069a8:	00002517          	auipc	a0,0x2
    800069ac:	b1050513          	addi	a0,a0,-1264 # 800084b8 <digits+0x28>
    800069b0:	fffff097          	auipc	ra,0xfffff
    800069b4:	1dc080e7          	jalr	476(ra) # 80005b8c <panic>
    800069b8:	01053903          	ld	s2,16(a0)
    800069bc:	00050493          	mv	s1,a0
    800069c0:	fffff097          	auipc	ra,0xfffff
    800069c4:	814080e7          	jalr	-2028(ra) # 800051d4 <mycpu>
    800069c8:	fea910e3          	bne	s2,a0,800069a8 <release+0x20>
    800069cc:	0004b823          	sd	zero,16(s1)
    800069d0:	0ff0000f          	fence
    800069d4:	0f50000f          	fence	iorw,ow
    800069d8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800069dc:	ffffe097          	auipc	ra,0xffffe
    800069e0:	7f8080e7          	jalr	2040(ra) # 800051d4 <mycpu>
    800069e4:	100027f3          	csrr	a5,sstatus
    800069e8:	0027f793          	andi	a5,a5,2
    800069ec:	04079a63          	bnez	a5,80006a40 <release+0xb8>
    800069f0:	07852783          	lw	a5,120(a0)
    800069f4:	02f05e63          	blez	a5,80006a30 <release+0xa8>
    800069f8:	fff7871b          	addiw	a4,a5,-1
    800069fc:	06e52c23          	sw	a4,120(a0)
    80006a00:	00071c63          	bnez	a4,80006a18 <release+0x90>
    80006a04:	07c52783          	lw	a5,124(a0)
    80006a08:	00078863          	beqz	a5,80006a18 <release+0x90>
    80006a0c:	100027f3          	csrr	a5,sstatus
    80006a10:	0027e793          	ori	a5,a5,2
    80006a14:	10079073          	csrw	sstatus,a5
    80006a18:	01813083          	ld	ra,24(sp)
    80006a1c:	01013403          	ld	s0,16(sp)
    80006a20:	00813483          	ld	s1,8(sp)
    80006a24:	00013903          	ld	s2,0(sp)
    80006a28:	02010113          	addi	sp,sp,32
    80006a2c:	00008067          	ret
    80006a30:	00002517          	auipc	a0,0x2
    80006a34:	aa850513          	addi	a0,a0,-1368 # 800084d8 <digits+0x48>
    80006a38:	fffff097          	auipc	ra,0xfffff
    80006a3c:	154080e7          	jalr	340(ra) # 80005b8c <panic>
    80006a40:	00002517          	auipc	a0,0x2
    80006a44:	a8050513          	addi	a0,a0,-1408 # 800084c0 <digits+0x30>
    80006a48:	fffff097          	auipc	ra,0xfffff
    80006a4c:	144080e7          	jalr	324(ra) # 80005b8c <panic>

0000000080006a50 <holding>:
    80006a50:	00052783          	lw	a5,0(a0)
    80006a54:	00079663          	bnez	a5,80006a60 <holding+0x10>
    80006a58:	00000513          	li	a0,0
    80006a5c:	00008067          	ret
    80006a60:	fe010113          	addi	sp,sp,-32
    80006a64:	00813823          	sd	s0,16(sp)
    80006a68:	00913423          	sd	s1,8(sp)
    80006a6c:	00113c23          	sd	ra,24(sp)
    80006a70:	02010413          	addi	s0,sp,32
    80006a74:	01053483          	ld	s1,16(a0)
    80006a78:	ffffe097          	auipc	ra,0xffffe
    80006a7c:	75c080e7          	jalr	1884(ra) # 800051d4 <mycpu>
    80006a80:	01813083          	ld	ra,24(sp)
    80006a84:	01013403          	ld	s0,16(sp)
    80006a88:	40a48533          	sub	a0,s1,a0
    80006a8c:	00153513          	seqz	a0,a0
    80006a90:	00813483          	ld	s1,8(sp)
    80006a94:	02010113          	addi	sp,sp,32
    80006a98:	00008067          	ret

0000000080006a9c <push_off>:
    80006a9c:	fe010113          	addi	sp,sp,-32
    80006aa0:	00813823          	sd	s0,16(sp)
    80006aa4:	00113c23          	sd	ra,24(sp)
    80006aa8:	00913423          	sd	s1,8(sp)
    80006aac:	02010413          	addi	s0,sp,32
    80006ab0:	100024f3          	csrr	s1,sstatus
    80006ab4:	100027f3          	csrr	a5,sstatus
    80006ab8:	ffd7f793          	andi	a5,a5,-3
    80006abc:	10079073          	csrw	sstatus,a5
    80006ac0:	ffffe097          	auipc	ra,0xffffe
    80006ac4:	714080e7          	jalr	1812(ra) # 800051d4 <mycpu>
    80006ac8:	07852783          	lw	a5,120(a0)
    80006acc:	02078663          	beqz	a5,80006af8 <push_off+0x5c>
    80006ad0:	ffffe097          	auipc	ra,0xffffe
    80006ad4:	704080e7          	jalr	1796(ra) # 800051d4 <mycpu>
    80006ad8:	07852783          	lw	a5,120(a0)
    80006adc:	01813083          	ld	ra,24(sp)
    80006ae0:	01013403          	ld	s0,16(sp)
    80006ae4:	0017879b          	addiw	a5,a5,1
    80006ae8:	06f52c23          	sw	a5,120(a0)
    80006aec:	00813483          	ld	s1,8(sp)
    80006af0:	02010113          	addi	sp,sp,32
    80006af4:	00008067          	ret
    80006af8:	0014d493          	srli	s1,s1,0x1
    80006afc:	ffffe097          	auipc	ra,0xffffe
    80006b00:	6d8080e7          	jalr	1752(ra) # 800051d4 <mycpu>
    80006b04:	0014f493          	andi	s1,s1,1
    80006b08:	06952e23          	sw	s1,124(a0)
    80006b0c:	fc5ff06f          	j	80006ad0 <push_off+0x34>

0000000080006b10 <pop_off>:
    80006b10:	ff010113          	addi	sp,sp,-16
    80006b14:	00813023          	sd	s0,0(sp)
    80006b18:	00113423          	sd	ra,8(sp)
    80006b1c:	01010413          	addi	s0,sp,16
    80006b20:	ffffe097          	auipc	ra,0xffffe
    80006b24:	6b4080e7          	jalr	1716(ra) # 800051d4 <mycpu>
    80006b28:	100027f3          	csrr	a5,sstatus
    80006b2c:	0027f793          	andi	a5,a5,2
    80006b30:	04079663          	bnez	a5,80006b7c <pop_off+0x6c>
    80006b34:	07852783          	lw	a5,120(a0)
    80006b38:	02f05a63          	blez	a5,80006b6c <pop_off+0x5c>
    80006b3c:	fff7871b          	addiw	a4,a5,-1
    80006b40:	06e52c23          	sw	a4,120(a0)
    80006b44:	00071c63          	bnez	a4,80006b5c <pop_off+0x4c>
    80006b48:	07c52783          	lw	a5,124(a0)
    80006b4c:	00078863          	beqz	a5,80006b5c <pop_off+0x4c>
    80006b50:	100027f3          	csrr	a5,sstatus
    80006b54:	0027e793          	ori	a5,a5,2
    80006b58:	10079073          	csrw	sstatus,a5
    80006b5c:	00813083          	ld	ra,8(sp)
    80006b60:	00013403          	ld	s0,0(sp)
    80006b64:	01010113          	addi	sp,sp,16
    80006b68:	00008067          	ret
    80006b6c:	00002517          	auipc	a0,0x2
    80006b70:	96c50513          	addi	a0,a0,-1684 # 800084d8 <digits+0x48>
    80006b74:	fffff097          	auipc	ra,0xfffff
    80006b78:	018080e7          	jalr	24(ra) # 80005b8c <panic>
    80006b7c:	00002517          	auipc	a0,0x2
    80006b80:	94450513          	addi	a0,a0,-1724 # 800084c0 <digits+0x30>
    80006b84:	fffff097          	auipc	ra,0xfffff
    80006b88:	008080e7          	jalr	8(ra) # 80005b8c <panic>

0000000080006b8c <push_on>:
    80006b8c:	fe010113          	addi	sp,sp,-32
    80006b90:	00813823          	sd	s0,16(sp)
    80006b94:	00113c23          	sd	ra,24(sp)
    80006b98:	00913423          	sd	s1,8(sp)
    80006b9c:	02010413          	addi	s0,sp,32
    80006ba0:	100024f3          	csrr	s1,sstatus
    80006ba4:	100027f3          	csrr	a5,sstatus
    80006ba8:	0027e793          	ori	a5,a5,2
    80006bac:	10079073          	csrw	sstatus,a5
    80006bb0:	ffffe097          	auipc	ra,0xffffe
    80006bb4:	624080e7          	jalr	1572(ra) # 800051d4 <mycpu>
    80006bb8:	07852783          	lw	a5,120(a0)
    80006bbc:	02078663          	beqz	a5,80006be8 <push_on+0x5c>
    80006bc0:	ffffe097          	auipc	ra,0xffffe
    80006bc4:	614080e7          	jalr	1556(ra) # 800051d4 <mycpu>
    80006bc8:	07852783          	lw	a5,120(a0)
    80006bcc:	01813083          	ld	ra,24(sp)
    80006bd0:	01013403          	ld	s0,16(sp)
    80006bd4:	0017879b          	addiw	a5,a5,1
    80006bd8:	06f52c23          	sw	a5,120(a0)
    80006bdc:	00813483          	ld	s1,8(sp)
    80006be0:	02010113          	addi	sp,sp,32
    80006be4:	00008067          	ret
    80006be8:	0014d493          	srli	s1,s1,0x1
    80006bec:	ffffe097          	auipc	ra,0xffffe
    80006bf0:	5e8080e7          	jalr	1512(ra) # 800051d4 <mycpu>
    80006bf4:	0014f493          	andi	s1,s1,1
    80006bf8:	06952e23          	sw	s1,124(a0)
    80006bfc:	fc5ff06f          	j	80006bc0 <push_on+0x34>

0000000080006c00 <pop_on>:
    80006c00:	ff010113          	addi	sp,sp,-16
    80006c04:	00813023          	sd	s0,0(sp)
    80006c08:	00113423          	sd	ra,8(sp)
    80006c0c:	01010413          	addi	s0,sp,16
    80006c10:	ffffe097          	auipc	ra,0xffffe
    80006c14:	5c4080e7          	jalr	1476(ra) # 800051d4 <mycpu>
    80006c18:	100027f3          	csrr	a5,sstatus
    80006c1c:	0027f793          	andi	a5,a5,2
    80006c20:	04078463          	beqz	a5,80006c68 <pop_on+0x68>
    80006c24:	07852783          	lw	a5,120(a0)
    80006c28:	02f05863          	blez	a5,80006c58 <pop_on+0x58>
    80006c2c:	fff7879b          	addiw	a5,a5,-1
    80006c30:	06f52c23          	sw	a5,120(a0)
    80006c34:	07853783          	ld	a5,120(a0)
    80006c38:	00079863          	bnez	a5,80006c48 <pop_on+0x48>
    80006c3c:	100027f3          	csrr	a5,sstatus
    80006c40:	ffd7f793          	andi	a5,a5,-3
    80006c44:	10079073          	csrw	sstatus,a5
    80006c48:	00813083          	ld	ra,8(sp)
    80006c4c:	00013403          	ld	s0,0(sp)
    80006c50:	01010113          	addi	sp,sp,16
    80006c54:	00008067          	ret
    80006c58:	00002517          	auipc	a0,0x2
    80006c5c:	8a850513          	addi	a0,a0,-1880 # 80008500 <digits+0x70>
    80006c60:	fffff097          	auipc	ra,0xfffff
    80006c64:	f2c080e7          	jalr	-212(ra) # 80005b8c <panic>
    80006c68:	00002517          	auipc	a0,0x2
    80006c6c:	87850513          	addi	a0,a0,-1928 # 800084e0 <digits+0x50>
    80006c70:	fffff097          	auipc	ra,0xfffff
    80006c74:	f1c080e7          	jalr	-228(ra) # 80005b8c <panic>

0000000080006c78 <__memset>:
    80006c78:	ff010113          	addi	sp,sp,-16
    80006c7c:	00813423          	sd	s0,8(sp)
    80006c80:	01010413          	addi	s0,sp,16
    80006c84:	1a060e63          	beqz	a2,80006e40 <__memset+0x1c8>
    80006c88:	40a007b3          	neg	a5,a0
    80006c8c:	0077f793          	andi	a5,a5,7
    80006c90:	00778693          	addi	a3,a5,7
    80006c94:	00b00813          	li	a6,11
    80006c98:	0ff5f593          	andi	a1,a1,255
    80006c9c:	fff6071b          	addiw	a4,a2,-1
    80006ca0:	1b06e663          	bltu	a3,a6,80006e4c <__memset+0x1d4>
    80006ca4:	1cd76463          	bltu	a4,a3,80006e6c <__memset+0x1f4>
    80006ca8:	1a078e63          	beqz	a5,80006e64 <__memset+0x1ec>
    80006cac:	00b50023          	sb	a1,0(a0)
    80006cb0:	00100713          	li	a4,1
    80006cb4:	1ae78463          	beq	a5,a4,80006e5c <__memset+0x1e4>
    80006cb8:	00b500a3          	sb	a1,1(a0)
    80006cbc:	00200713          	li	a4,2
    80006cc0:	1ae78a63          	beq	a5,a4,80006e74 <__memset+0x1fc>
    80006cc4:	00b50123          	sb	a1,2(a0)
    80006cc8:	00300713          	li	a4,3
    80006ccc:	18e78463          	beq	a5,a4,80006e54 <__memset+0x1dc>
    80006cd0:	00b501a3          	sb	a1,3(a0)
    80006cd4:	00400713          	li	a4,4
    80006cd8:	1ae78263          	beq	a5,a4,80006e7c <__memset+0x204>
    80006cdc:	00b50223          	sb	a1,4(a0)
    80006ce0:	00500713          	li	a4,5
    80006ce4:	1ae78063          	beq	a5,a4,80006e84 <__memset+0x20c>
    80006ce8:	00b502a3          	sb	a1,5(a0)
    80006cec:	00700713          	li	a4,7
    80006cf0:	18e79e63          	bne	a5,a4,80006e8c <__memset+0x214>
    80006cf4:	00b50323          	sb	a1,6(a0)
    80006cf8:	00700e93          	li	t4,7
    80006cfc:	00859713          	slli	a4,a1,0x8
    80006d00:	00e5e733          	or	a4,a1,a4
    80006d04:	01059e13          	slli	t3,a1,0x10
    80006d08:	01c76e33          	or	t3,a4,t3
    80006d0c:	01859313          	slli	t1,a1,0x18
    80006d10:	006e6333          	or	t1,t3,t1
    80006d14:	02059893          	slli	a7,a1,0x20
    80006d18:	40f60e3b          	subw	t3,a2,a5
    80006d1c:	011368b3          	or	a7,t1,a7
    80006d20:	02859813          	slli	a6,a1,0x28
    80006d24:	0108e833          	or	a6,a7,a6
    80006d28:	03059693          	slli	a3,a1,0x30
    80006d2c:	003e589b          	srliw	a7,t3,0x3
    80006d30:	00d866b3          	or	a3,a6,a3
    80006d34:	03859713          	slli	a4,a1,0x38
    80006d38:	00389813          	slli	a6,a7,0x3
    80006d3c:	00f507b3          	add	a5,a0,a5
    80006d40:	00e6e733          	or	a4,a3,a4
    80006d44:	000e089b          	sext.w	a7,t3
    80006d48:	00f806b3          	add	a3,a6,a5
    80006d4c:	00e7b023          	sd	a4,0(a5)
    80006d50:	00878793          	addi	a5,a5,8
    80006d54:	fed79ce3          	bne	a5,a3,80006d4c <__memset+0xd4>
    80006d58:	ff8e7793          	andi	a5,t3,-8
    80006d5c:	0007871b          	sext.w	a4,a5
    80006d60:	01d787bb          	addw	a5,a5,t4
    80006d64:	0ce88e63          	beq	a7,a4,80006e40 <__memset+0x1c8>
    80006d68:	00f50733          	add	a4,a0,a5
    80006d6c:	00b70023          	sb	a1,0(a4)
    80006d70:	0017871b          	addiw	a4,a5,1
    80006d74:	0cc77663          	bgeu	a4,a2,80006e40 <__memset+0x1c8>
    80006d78:	00e50733          	add	a4,a0,a4
    80006d7c:	00b70023          	sb	a1,0(a4)
    80006d80:	0027871b          	addiw	a4,a5,2
    80006d84:	0ac77e63          	bgeu	a4,a2,80006e40 <__memset+0x1c8>
    80006d88:	00e50733          	add	a4,a0,a4
    80006d8c:	00b70023          	sb	a1,0(a4)
    80006d90:	0037871b          	addiw	a4,a5,3
    80006d94:	0ac77663          	bgeu	a4,a2,80006e40 <__memset+0x1c8>
    80006d98:	00e50733          	add	a4,a0,a4
    80006d9c:	00b70023          	sb	a1,0(a4)
    80006da0:	0047871b          	addiw	a4,a5,4
    80006da4:	08c77e63          	bgeu	a4,a2,80006e40 <__memset+0x1c8>
    80006da8:	00e50733          	add	a4,a0,a4
    80006dac:	00b70023          	sb	a1,0(a4)
    80006db0:	0057871b          	addiw	a4,a5,5
    80006db4:	08c77663          	bgeu	a4,a2,80006e40 <__memset+0x1c8>
    80006db8:	00e50733          	add	a4,a0,a4
    80006dbc:	00b70023          	sb	a1,0(a4)
    80006dc0:	0067871b          	addiw	a4,a5,6
    80006dc4:	06c77e63          	bgeu	a4,a2,80006e40 <__memset+0x1c8>
    80006dc8:	00e50733          	add	a4,a0,a4
    80006dcc:	00b70023          	sb	a1,0(a4)
    80006dd0:	0077871b          	addiw	a4,a5,7
    80006dd4:	06c77663          	bgeu	a4,a2,80006e40 <__memset+0x1c8>
    80006dd8:	00e50733          	add	a4,a0,a4
    80006ddc:	00b70023          	sb	a1,0(a4)
    80006de0:	0087871b          	addiw	a4,a5,8
    80006de4:	04c77e63          	bgeu	a4,a2,80006e40 <__memset+0x1c8>
    80006de8:	00e50733          	add	a4,a0,a4
    80006dec:	00b70023          	sb	a1,0(a4)
    80006df0:	0097871b          	addiw	a4,a5,9
    80006df4:	04c77663          	bgeu	a4,a2,80006e40 <__memset+0x1c8>
    80006df8:	00e50733          	add	a4,a0,a4
    80006dfc:	00b70023          	sb	a1,0(a4)
    80006e00:	00a7871b          	addiw	a4,a5,10
    80006e04:	02c77e63          	bgeu	a4,a2,80006e40 <__memset+0x1c8>
    80006e08:	00e50733          	add	a4,a0,a4
    80006e0c:	00b70023          	sb	a1,0(a4)
    80006e10:	00b7871b          	addiw	a4,a5,11
    80006e14:	02c77663          	bgeu	a4,a2,80006e40 <__memset+0x1c8>
    80006e18:	00e50733          	add	a4,a0,a4
    80006e1c:	00b70023          	sb	a1,0(a4)
    80006e20:	00c7871b          	addiw	a4,a5,12
    80006e24:	00c77e63          	bgeu	a4,a2,80006e40 <__memset+0x1c8>
    80006e28:	00e50733          	add	a4,a0,a4
    80006e2c:	00b70023          	sb	a1,0(a4)
    80006e30:	00d7879b          	addiw	a5,a5,13
    80006e34:	00c7f663          	bgeu	a5,a2,80006e40 <__memset+0x1c8>
    80006e38:	00f507b3          	add	a5,a0,a5
    80006e3c:	00b78023          	sb	a1,0(a5)
    80006e40:	00813403          	ld	s0,8(sp)
    80006e44:	01010113          	addi	sp,sp,16
    80006e48:	00008067          	ret
    80006e4c:	00b00693          	li	a3,11
    80006e50:	e55ff06f          	j	80006ca4 <__memset+0x2c>
    80006e54:	00300e93          	li	t4,3
    80006e58:	ea5ff06f          	j	80006cfc <__memset+0x84>
    80006e5c:	00100e93          	li	t4,1
    80006e60:	e9dff06f          	j	80006cfc <__memset+0x84>
    80006e64:	00000e93          	li	t4,0
    80006e68:	e95ff06f          	j	80006cfc <__memset+0x84>
    80006e6c:	00000793          	li	a5,0
    80006e70:	ef9ff06f          	j	80006d68 <__memset+0xf0>
    80006e74:	00200e93          	li	t4,2
    80006e78:	e85ff06f          	j	80006cfc <__memset+0x84>
    80006e7c:	00400e93          	li	t4,4
    80006e80:	e7dff06f          	j	80006cfc <__memset+0x84>
    80006e84:	00500e93          	li	t4,5
    80006e88:	e75ff06f          	j	80006cfc <__memset+0x84>
    80006e8c:	00600e93          	li	t4,6
    80006e90:	e6dff06f          	j	80006cfc <__memset+0x84>

0000000080006e94 <__memmove>:
    80006e94:	ff010113          	addi	sp,sp,-16
    80006e98:	00813423          	sd	s0,8(sp)
    80006e9c:	01010413          	addi	s0,sp,16
    80006ea0:	0e060863          	beqz	a2,80006f90 <__memmove+0xfc>
    80006ea4:	fff6069b          	addiw	a3,a2,-1
    80006ea8:	0006881b          	sext.w	a6,a3
    80006eac:	0ea5e863          	bltu	a1,a0,80006f9c <__memmove+0x108>
    80006eb0:	00758713          	addi	a4,a1,7
    80006eb4:	00a5e7b3          	or	a5,a1,a0
    80006eb8:	40a70733          	sub	a4,a4,a0
    80006ebc:	0077f793          	andi	a5,a5,7
    80006ec0:	00f73713          	sltiu	a4,a4,15
    80006ec4:	00174713          	xori	a4,a4,1
    80006ec8:	0017b793          	seqz	a5,a5
    80006ecc:	00e7f7b3          	and	a5,a5,a4
    80006ed0:	10078863          	beqz	a5,80006fe0 <__memmove+0x14c>
    80006ed4:	00900793          	li	a5,9
    80006ed8:	1107f463          	bgeu	a5,a6,80006fe0 <__memmove+0x14c>
    80006edc:	0036581b          	srliw	a6,a2,0x3
    80006ee0:	fff8081b          	addiw	a6,a6,-1
    80006ee4:	02081813          	slli	a6,a6,0x20
    80006ee8:	01d85893          	srli	a7,a6,0x1d
    80006eec:	00858813          	addi	a6,a1,8
    80006ef0:	00058793          	mv	a5,a1
    80006ef4:	00050713          	mv	a4,a0
    80006ef8:	01088833          	add	a6,a7,a6
    80006efc:	0007b883          	ld	a7,0(a5)
    80006f00:	00878793          	addi	a5,a5,8
    80006f04:	00870713          	addi	a4,a4,8
    80006f08:	ff173c23          	sd	a7,-8(a4)
    80006f0c:	ff0798e3          	bne	a5,a6,80006efc <__memmove+0x68>
    80006f10:	ff867713          	andi	a4,a2,-8
    80006f14:	02071793          	slli	a5,a4,0x20
    80006f18:	0207d793          	srli	a5,a5,0x20
    80006f1c:	00f585b3          	add	a1,a1,a5
    80006f20:	40e686bb          	subw	a3,a3,a4
    80006f24:	00f507b3          	add	a5,a0,a5
    80006f28:	06e60463          	beq	a2,a4,80006f90 <__memmove+0xfc>
    80006f2c:	0005c703          	lbu	a4,0(a1)
    80006f30:	00e78023          	sb	a4,0(a5)
    80006f34:	04068e63          	beqz	a3,80006f90 <__memmove+0xfc>
    80006f38:	0015c603          	lbu	a2,1(a1)
    80006f3c:	00100713          	li	a4,1
    80006f40:	00c780a3          	sb	a2,1(a5)
    80006f44:	04e68663          	beq	a3,a4,80006f90 <__memmove+0xfc>
    80006f48:	0025c603          	lbu	a2,2(a1)
    80006f4c:	00200713          	li	a4,2
    80006f50:	00c78123          	sb	a2,2(a5)
    80006f54:	02e68e63          	beq	a3,a4,80006f90 <__memmove+0xfc>
    80006f58:	0035c603          	lbu	a2,3(a1)
    80006f5c:	00300713          	li	a4,3
    80006f60:	00c781a3          	sb	a2,3(a5)
    80006f64:	02e68663          	beq	a3,a4,80006f90 <__memmove+0xfc>
    80006f68:	0045c603          	lbu	a2,4(a1)
    80006f6c:	00400713          	li	a4,4
    80006f70:	00c78223          	sb	a2,4(a5)
    80006f74:	00e68e63          	beq	a3,a4,80006f90 <__memmove+0xfc>
    80006f78:	0055c603          	lbu	a2,5(a1)
    80006f7c:	00500713          	li	a4,5
    80006f80:	00c782a3          	sb	a2,5(a5)
    80006f84:	00e68663          	beq	a3,a4,80006f90 <__memmove+0xfc>
    80006f88:	0065c703          	lbu	a4,6(a1)
    80006f8c:	00e78323          	sb	a4,6(a5)
    80006f90:	00813403          	ld	s0,8(sp)
    80006f94:	01010113          	addi	sp,sp,16
    80006f98:	00008067          	ret
    80006f9c:	02061713          	slli	a4,a2,0x20
    80006fa0:	02075713          	srli	a4,a4,0x20
    80006fa4:	00e587b3          	add	a5,a1,a4
    80006fa8:	f0f574e3          	bgeu	a0,a5,80006eb0 <__memmove+0x1c>
    80006fac:	02069613          	slli	a2,a3,0x20
    80006fb0:	02065613          	srli	a2,a2,0x20
    80006fb4:	fff64613          	not	a2,a2
    80006fb8:	00e50733          	add	a4,a0,a4
    80006fbc:	00c78633          	add	a2,a5,a2
    80006fc0:	fff7c683          	lbu	a3,-1(a5)
    80006fc4:	fff78793          	addi	a5,a5,-1
    80006fc8:	fff70713          	addi	a4,a4,-1
    80006fcc:	00d70023          	sb	a3,0(a4)
    80006fd0:	fec798e3          	bne	a5,a2,80006fc0 <__memmove+0x12c>
    80006fd4:	00813403          	ld	s0,8(sp)
    80006fd8:	01010113          	addi	sp,sp,16
    80006fdc:	00008067          	ret
    80006fe0:	02069713          	slli	a4,a3,0x20
    80006fe4:	02075713          	srli	a4,a4,0x20
    80006fe8:	00170713          	addi	a4,a4,1
    80006fec:	00e50733          	add	a4,a0,a4
    80006ff0:	00050793          	mv	a5,a0
    80006ff4:	0005c683          	lbu	a3,0(a1)
    80006ff8:	00178793          	addi	a5,a5,1
    80006ffc:	00158593          	addi	a1,a1,1
    80007000:	fed78fa3          	sb	a3,-1(a5)
    80007004:	fee798e3          	bne	a5,a4,80006ff4 <__memmove+0x160>
    80007008:	f89ff06f          	j	80006f90 <__memmove+0xfc>
	...
